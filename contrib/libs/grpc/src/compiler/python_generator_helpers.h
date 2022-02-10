/*
 *
 * Copyright 2015 gRPC authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#ifndef GRPC_INTERNAL_COMPILER_PYTHON_GENERATOR_HELPERS_H
#define GRPC_INTERNAL_COMPILER_PYTHON_GENERATOR_HELPERS_H

#include <cstring>
#include <fstream>
#include <iostream>
#include <vector>

#include "src/compiler/config.h"
#include "src/compiler/generator_helpers.h"
#include "src/compiler/python_generator.h"
#include "src/compiler/python_private_generator.h"

using grpc::protobuf::Descriptor;
using grpc::protobuf::FileDescriptor;
using grpc::protobuf::MethodDescriptor;
using grpc::protobuf::ServiceDescriptor;
using grpc::protobuf::compiler::GeneratorContext;
using grpc::protobuf::io::CodedOutputStream;
using grpc::protobuf::io::Printer;
using grpc::protobuf::io::StringOutputStream;
using grpc::protobuf::io::ZeroCopyOutputStream;
using grpc_generator::StringReplace;
using grpc_generator::StripProto;
using std::vector;

namespace grpc_python_generator {

namespace {

typedef vector<const Descriptor*> DescriptorVector;
typedef vector<TString> StringVector; 

static TString StripModulePrefixes( 
    const TString& raw_module_name, 
    const std::vector<TString>& prefixes_to_filter) { 
  for (const auto& prefix : prefixes_to_filter) {
    if (raw_module_name.rfind(prefix, 0) == 0) {
      return raw_module_name.substr(prefix.size(),
                                    raw_module_name.size() - prefix.size());
    }
  }
  return raw_module_name;
}

// TODO(https://github.com/google/protobuf/issues/888):
// Export `ModuleName` from protobuf's
// `src/google/protobuf/compiler/python/python_generator.cc` file.
TString ModuleName(const TString& filename, 
                       const TString& import_prefix, 
                       const std::vector<TString>& prefixes_to_filter) { 
  TString basename = StripProto(filename); 
  basename = StringReplace(basename, "-", "_");
  basename = StringReplace(basename, "/", ".");
  return StripModulePrefixes(import_prefix + basename + "_pb2",
                             prefixes_to_filter);
}

// TODO(https://github.com/google/protobuf/issues/888):
// Export `ModuleAlias` from protobuf's
// `src/google/protobuf/compiler/python/python_generator.cc` file.
TString ModuleAlias(const TString& filename, 
                        const TString& import_prefix, 
                        const std::vector<TString>& prefixes_to_filter) { 
  TString module_name = 
      ModuleName(filename, import_prefix, prefixes_to_filter);
  // We can't have dots in the module name, so we replace each with _dot_.
  // But that could lead to a collision between a.b and a_dot_b, so we also
  // duplicate each underscore.
  module_name = StringReplace(module_name, "_", "__");
  module_name = StringReplace(module_name, ".", "_dot_");
  return module_name;
}

bool GetModuleAndMessagePath(
    const Descriptor* type, TString* out, TString generator_file_name, 
    bool generate_in_pb2_grpc, TString& import_prefix, 
    const std::vector<TString>& prefixes_to_filter) { 
  const Descriptor* path_elem_type = type;
  DescriptorVector message_path;
  do {
    message_path.push_back(path_elem_type);
    path_elem_type = path_elem_type->containing_type();
  } while (path_elem_type);  // implicit nullptr comparison; don't be explicit
  TString file_name = type->file()->name(); 
  static const int proto_suffix_length = strlen(".proto");
  if (!(file_name.size() > static_cast<size_t>(proto_suffix_length) &&
        file_name.find_last_of(".proto") == file_name.size() - 1)) {
    return false;
  }

  TString module; 
  if (generator_file_name != file_name || generate_in_pb2_grpc) {
    module = ModuleAlias(file_name, import_prefix, prefixes_to_filter) + ".";
  } else {
    module = "";
  }
  TString message_type; 
  for (DescriptorVector::reverse_iterator path_iter = message_path.rbegin();
       path_iter != message_path.rend(); ++path_iter) {
    message_type += (*path_iter)->name() + ".";
  }
  // no pop_back prior to C++11
  message_type.resize(message_type.size() - 1);
  *out = module + message_type;
  return true;
}

template <typename DescriptorType>
StringVector get_all_comments(const DescriptorType* descriptor) {
  StringVector comments;
  grpc_generator::GetComment(
      descriptor, grpc_generator::COMMENTTYPE_LEADING_DETACHED, &comments);
  grpc_generator::GetComment(descriptor, grpc_generator::COMMENTTYPE_LEADING,
                             &comments);
  grpc_generator::GetComment(descriptor, grpc_generator::COMMENTTYPE_TRAILING,
                             &comments);
  return comments;
}

inline void Split(const TString& s, char delim, 
                  std::vector<TString>* append_to) { 
  auto current = s.begin();
  while (current <= s.end()) {
    auto next = std::find(current, s.end(), delim);
    append_to->emplace_back(current, next);
    current = next + 1;
  }
}

}  // namespace

}  // namespace grpc_python_generator

#endif  // GRPC_INTERNAL_COMPILER_PYTHON_GENERATOR_HELPERS_H
