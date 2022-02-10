# Generated by devtools/yamaker from nixpkgs a54d2e72e282f2bc68c49f82c735cf664244ec75. 
LIBRARY()

LICENSE(Apache-2.0) 

LICENSE_TEXTS(.yandex_meta/licenses.list.txt) 
 
VERSION(1.33.2)

ORIGINAL_SOURCE(https://github.com/grpc/grpc)

OWNER(
    akastornov 
    g:contrib 
    g:cpp-contrib 
)

PEERDIR(
    contrib/libs/grpc/grpc
    contrib/libs/grpc/grpc++
)

# Fix selective checkout DEVTOOLSSUPPORT-6767
SRCDIR(contrib/libs/grpc/include) 

END()

RECURSE(
    grpc
    grpc++
    grpc++_error_details
    grpc++_reflection
    grpc++_unsecure
    grpc_unsecure
    grpcpp_channelz
    src/compiler/grpc_cpp_plugin
    src/compiler/grpc_plugin_support
    src/compiler/grpc_python_plugin
    src/core/lib
    src/cpp/common 
    src/proto/grpc/core
    src/proto/grpc/channelz
    src/proto/grpc/health/v1
    src/proto/grpc/reflection/v1alpha
    src/proto/grpc/status
    src/python/grpcio_channelz
    src/python/grpcio_health_checking
    src/python/grpcio_reflection
    src/python/grpcio_status
    third_party/address_sorting
    third_party/upb
    tools/codegen/core/gen_hpack_tables
    tools/codegen/core/gen_legal_metadata_characters
    tools/codegen/core/gen_percent_encoding_tables
)

RECURSE_FOR_TESTS(
    src/proto/grpc/testing
    src/proto/grpc/testing/duplicate
    src/proto/grpc/testing/xds
    src/python/grpcio_tests
    test/core/util
    test/cpp/end2end
)
