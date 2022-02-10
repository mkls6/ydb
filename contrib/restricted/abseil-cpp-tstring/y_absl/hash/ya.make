# Generated by devtools/yamaker. 
 
LIBRARY() 
 
OWNER( 
    somov 
    g:cpp-contrib 
) 
 
LICENSE(Apache-2.0) 
 
LICENSE_TEXTS(.yandex_meta/licenses.list.txt)

PEERDIR( 
    contrib/restricted/abseil-cpp-tstring/y_absl/base 
    contrib/restricted/abseil-cpp-tstring/y_absl/base/internal/raw_logging 
    contrib/restricted/abseil-cpp-tstring/y_absl/base/internal/spinlock_wait 
    contrib/restricted/abseil-cpp-tstring/y_absl/base/internal/throw_delegate 
    contrib/restricted/abseil-cpp-tstring/y_absl/base/log_severity 
    contrib/restricted/abseil-cpp-tstring/y_absl/city
    contrib/restricted/abseil-cpp-tstring/y_absl/hash/internal
    contrib/restricted/abseil-cpp-tstring/y_absl/numeric 
    contrib/restricted/abseil-cpp-tstring/y_absl/strings 
    contrib/restricted/abseil-cpp-tstring/y_absl/strings/internal/absl_strings_internal
    contrib/restricted/abseil-cpp-tstring/y_absl/types/bad_optional_access 
    contrib/restricted/abseil-cpp-tstring/y_absl/types/bad_variant_access
    contrib/restricted/abseil-cpp-tstring/y_absl/types 
    contrib/restricted/abseil-cpp-tstring/y_absl/types/internal
) 
 
ADDINCL( 
    GLOBAL contrib/restricted/abseil-cpp-tstring 
) 
 
NO_COMPILER_WARNINGS() 
 
SRCS( 
    internal/hash.cc
) 
 
END() 
