# Generated by devtools/yamaker from nixpkgs 21.11.

LIBRARY()

OWNER(g:cpp-contrib)

VERSION(20211102.0)

LICENSE(Apache-2.0)

LICENSE_TEXTS(.yandex_meta/licenses.list.txt)

PEERDIR(
    contrib/restricted/abseil-cpp/absl/algorithm 
    contrib/restricted/abseil-cpp/absl/base
    contrib/restricted/abseil-cpp/absl/base/internal/low_level_alloc
    contrib/restricted/abseil-cpp/absl/base/internal/raw_logging
    contrib/restricted/abseil-cpp/absl/base/internal/scoped_set_env
    contrib/restricted/abseil-cpp/absl/base/internal/spinlock_wait
    contrib/restricted/abseil-cpp/absl/base/internal/strerror
    contrib/restricted/abseil-cpp/absl/base/internal/throw_delegate
    contrib/restricted/abseil-cpp/absl/base/log_severity
    contrib/restricted/abseil-cpp/absl/city
    contrib/restricted/abseil-cpp/absl/container 
    contrib/restricted/abseil-cpp/absl/container/internal/absl_hashtablez_sampler
    contrib/restricted/abseil-cpp/absl/container/internal/raw_hash_set
    contrib/restricted/abseil-cpp/absl/debugging
    contrib/restricted/abseil-cpp/absl/debugging/failure_signal_handler
    contrib/restricted/abseil-cpp/absl/debugging/internal
    contrib/restricted/abseil-cpp/absl/debugging/leak_check
    contrib/restricted/abseil-cpp/absl/debugging/leak_check_disable
    contrib/restricted/abseil-cpp/absl/debugging/stacktrace
    contrib/restricted/abseil-cpp/absl/debugging/symbolize
    contrib/restricted/abseil-cpp/absl/demangle
    contrib/restricted/abseil-cpp/absl/flags
    contrib/restricted/abseil-cpp/absl/flags/commandlineflag
    contrib/restricted/abseil-cpp/absl/flags/internal/commandlineflag
    contrib/restricted/abseil-cpp/absl/flags/internal/flag
    contrib/restricted/abseil-cpp/absl/flags/internal/private_handle_accessor
    contrib/restricted/abseil-cpp/absl/flags/internal/program_name
    contrib/restricted/abseil-cpp/absl/flags/internal/usage
    contrib/restricted/abseil-cpp/absl/flags/marshalling
    contrib/restricted/abseil-cpp/absl/flags/parse
    contrib/restricted/abseil-cpp/absl/flags/reflection
    contrib/restricted/abseil-cpp/absl/flags/usage
    contrib/restricted/abseil-cpp/absl/flags/usage_config
    contrib/restricted/abseil-cpp/absl/functional 
    contrib/restricted/abseil-cpp/absl/hash
    contrib/restricted/abseil-cpp/absl/hash/internal
    contrib/restricted/abseil-cpp/absl/memory
    contrib/restricted/abseil-cpp/absl/meta
    contrib/restricted/abseil-cpp/absl/numeric
    contrib/restricted/abseil-cpp/absl/profiling/internal/exponential_biased
    contrib/restricted/abseil-cpp/absl/profiling/internal/periodic_sampler
    contrib/restricted/abseil-cpp/absl/random/absl_random_distributions
    contrib/restricted/abseil-cpp/absl/random/internal/absl_random_internal_distribution_test_util
    contrib/restricted/abseil-cpp/absl/random/internal/pool_urbg
    contrib/restricted/abseil-cpp/absl/random/internal/randen
    contrib/restricted/abseil-cpp/absl/random/internal/randen_detect
    contrib/restricted/abseil-cpp/absl/random/internal/randen_hwaes
    contrib/restricted/abseil-cpp/absl/random/internal/randen_round_keys
    contrib/restricted/abseil-cpp/absl/random/internal/randen_slow
    contrib/restricted/abseil-cpp/absl/random/internal/seed_material
    contrib/restricted/abseil-cpp/absl/random/seed_gen_exception
    contrib/restricted/abseil-cpp/absl/random/seed_sequences
    contrib/restricted/abseil-cpp/absl/status
    contrib/restricted/abseil-cpp/absl/status/statusor
    contrib/restricted/abseil-cpp/absl/strings
    contrib/restricted/abseil-cpp/absl/strings/cord
    contrib/restricted/abseil-cpp/absl/strings/internal/absl_cord_internal
    contrib/restricted/abseil-cpp/absl/strings/internal/absl_strings_internal
    contrib/restricted/abseil-cpp/absl/strings/internal/cordz_functions
    contrib/restricted/abseil-cpp/absl/strings/internal/cordz_handle
    contrib/restricted/abseil-cpp/absl/strings/internal/cordz_info
    contrib/restricted/abseil-cpp/absl/strings/internal/cordz_sample_token
    contrib/restricted/abseil-cpp/absl/strings/internal/str_format
    contrib/restricted/abseil-cpp/absl/synchronization
    contrib/restricted/abseil-cpp/absl/synchronization/internal
    contrib/restricted/abseil-cpp/absl/time
    contrib/restricted/abseil-cpp/absl/time/civil_time
    contrib/restricted/abseil-cpp/absl/time/time_zone
    contrib/restricted/abseil-cpp/absl/types 
    contrib/restricted/abseil-cpp/absl/types/bad_any_cast
    contrib/restricted/abseil-cpp/absl/types/bad_optional_access
    contrib/restricted/abseil-cpp/absl/types/bad_variant_access
    contrib/restricted/abseil-cpp/absl/types/internal
    contrib/restricted/abseil-cpp/absl/utility 
)

NO_RUNTIME()

END()

RECURSE(
    absl/algorithm 
    absl/base
    absl/base/internal/low_level_alloc
    absl/base/internal/raw_logging
    absl/base/internal/scoped_set_env
    absl/base/internal/spinlock_wait
    absl/base/internal/strerror
    absl/base/internal/throw_delegate
    absl/base/log_severity
    absl/city
    absl/container 
    absl/container/internal/absl_hashtablez_sampler
    absl/container/internal/raw_hash_set
    absl/debugging
    absl/debugging/failure_signal_handler
    absl/debugging/internal
    absl/debugging/leak_check
    absl/debugging/leak_check_disable
    absl/debugging/stacktrace
    absl/debugging/symbolize
    absl/demangle
    absl/flags
    absl/flags/commandlineflag
    absl/flags/internal/commandlineflag
    absl/flags/internal/flag
    absl/flags/internal/private_handle_accessor
    absl/flags/internal/program_name
    absl/flags/internal/usage
    absl/flags/marshalling
    absl/flags/parse
    absl/flags/reflection
    absl/flags/usage
    absl/flags/usage_config
    absl/functional 
    absl/hash
    absl/hash/internal
    absl/memory
    absl/meta
    absl/numeric
    absl/profiling/internal/exponential_biased
    absl/profiling/internal/periodic_sampler
    absl/random/absl_random_distributions
    absl/random/internal/absl_random_internal_distribution_test_util
    absl/random/internal/pool_urbg
    absl/random/internal/randen
    absl/random/internal/randen_detect
    absl/random/internal/randen_hwaes
    absl/random/internal/randen_round_keys
    absl/random/internal/randen_slow
    absl/random/internal/seed_material
    absl/random/seed_gen_exception
    absl/random/seed_sequences
    absl/status
    absl/status/statusor
    absl/strings
    absl/strings/cord
    absl/strings/internal/absl_cord_internal
    absl/strings/internal/absl_strings_internal
    absl/strings/internal/cordz_functions
    absl/strings/internal/cordz_handle
    absl/strings/internal/cordz_info
    absl/strings/internal/cordz_sample_token
    absl/strings/internal/str_format
    absl/synchronization
    absl/synchronization/internal
    absl/time
    absl/time/civil_time
    absl/time/time_zone
    absl/types 
    absl/types/bad_any_cast
    absl/types/bad_optional_access
    absl/types/bad_variant_access
    absl/types/internal
    absl/utility 
)
