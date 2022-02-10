# Generated by devtools/yamaker.

LIBRARY()

WITHOUT_LICENSE_TEXTS() 
 
OWNER(g:cpp-contrib)

LICENSE(Apache-2.0)

PEERDIR(
    certs
    contrib/libs/c-ares
    contrib/libs/grpc/src/core/lib
    contrib/libs/grpc/third_party/address_sorting
    contrib/libs/grpc/third_party/upb
    contrib/libs/openssl
    contrib/libs/re2 
    contrib/libs/zlib
    contrib/restricted/abseil-cpp-tstring/y_absl/hash 
    contrib/restricted/abseil-cpp-tstring/y_absl/meta 
    contrib/restricted/abseil-cpp-tstring/y_absl/status 
    contrib/restricted/abseil-cpp-tstring/y_absl/strings 
    contrib/restricted/abseil-cpp-tstring/y_absl/strings/cord
    contrib/restricted/abseil-cpp-tstring/y_absl/strings/internal/str_format 
    contrib/restricted/abseil-cpp-tstring/y_absl/time 
    library/cpp/resource
)

ADDINCL(
    GLOBAL contrib/libs/grpc/include
    contrib/libs/c-ares
    ${ARCADIA_BUILD_ROOT}/contrib/libs/grpc 
    contrib/libs/grpc
    contrib/libs/grpc/src/core/ext/upb-generated
    contrib/libs/grpc/third_party/address_sorting/include
    contrib/libs/grpc/third_party/upb
    contrib/libs/re2 
)

NO_COMPILER_WARNINGS()

SRCDIR(contrib/libs/grpc/src/core)

IF (OS_LINUX OR OS_DARWIN)
    CFLAGS( 
        -DGRPC_POSIX_FORK_ALLOW_PTHREAD_ATFORK=1 
    ) 
ENDIF()

SRCS(
    ext/filters/census/grpc_context.cc
    ext/filters/client_channel/backend_metric.cc
    ext/filters/client_channel/backup_poller.cc
    ext/filters/client_channel/channel_connectivity.cc
    ext/filters/client_channel/client_channel.cc
    ext/filters/client_channel/client_channel_channelz.cc
    ext/filters/client_channel/client_channel_factory.cc
    ext/filters/client_channel/client_channel_plugin.cc
    ext/filters/client_channel/config_selector.cc 
    ext/filters/client_channel/global_subchannel_pool.cc
    ext/filters/client_channel/health/health_check_client.cc
    ext/filters/client_channel/http_connect_handshaker.cc
    ext/filters/client_channel/http_proxy.cc
    ext/filters/client_channel/lb_policy.cc
    ext/filters/client_channel/lb_policy/address_filtering.cc 
    ext/filters/client_channel/lb_policy/child_policy_handler.cc 
    ext/filters/client_channel/lb_policy/grpclb/client_load_reporting_filter.cc
    ext/filters/client_channel/lb_policy/grpclb/grpclb.cc
    ext/filters/client_channel/lb_policy/grpclb/grpclb_balancer_addresses.cc 
    ext/filters/client_channel/lb_policy/grpclb/grpclb_channel_secure.cc
    ext/filters/client_channel/lb_policy/grpclb/grpclb_client_stats.cc
    ext/filters/client_channel/lb_policy/grpclb/load_balancer_api.cc
    ext/filters/client_channel/lb_policy/pick_first/pick_first.cc
    ext/filters/client_channel/lb_policy/priority/priority.cc 
    ext/filters/client_channel/lb_policy/round_robin/round_robin.cc
    ext/filters/client_channel/lb_policy/weighted_target/weighted_target.cc 
    ext/filters/client_channel/lb_policy/xds/cds.cc
    ext/filters/client_channel/lb_policy/xds/eds.cc 
    ext/filters/client_channel/lb_policy/xds/eds_drop.cc 
    ext/filters/client_channel/lb_policy/xds/xds_cluster_manager.cc 
    ext/filters/client_channel/lb_policy_registry.cc
    ext/filters/client_channel/local_subchannel_pool.cc
    ext/filters/client_channel/proxy_mapper_registry.cc
    ext/filters/client_channel/resolver.cc
    ext/filters/client_channel/resolver/dns/c_ares/dns_resolver_ares.cc
    ext/filters/client_channel/resolver/dns/c_ares/grpc_ares_ev_driver.cc
    ext/filters/client_channel/resolver/dns/c_ares/grpc_ares_ev_driver_libuv.cc
    ext/filters/client_channel/resolver/dns/c_ares/grpc_ares_ev_driver_posix.cc
    ext/filters/client_channel/resolver/dns/c_ares/grpc_ares_ev_driver_windows.cc
    ext/filters/client_channel/resolver/dns/c_ares/grpc_ares_wrapper.cc
    ext/filters/client_channel/resolver/dns/c_ares/grpc_ares_wrapper_fallback.cc
    ext/filters/client_channel/resolver/dns/c_ares/grpc_ares_wrapper_libuv.cc
    ext/filters/client_channel/resolver/dns/c_ares/grpc_ares_wrapper_posix.cc
    ext/filters/client_channel/resolver/dns/c_ares/grpc_ares_wrapper_windows.cc
    ext/filters/client_channel/resolver/dns/dns_resolver_selection.cc
    ext/filters/client_channel/resolver/dns/native/dns_resolver.cc
    ext/filters/client_channel/resolver/fake/fake_resolver.cc
    ext/filters/client_channel/resolver/sockaddr/sockaddr_resolver.cc
    ext/filters/client_channel/resolver/xds/xds_resolver.cc
    ext/filters/client_channel/resolver_registry.cc
    ext/filters/client_channel/resolver_result_parsing.cc
    ext/filters/client_channel/resolving_lb_policy.cc
    ext/filters/client_channel/retry_throttle.cc
    ext/filters/client_channel/server_address.cc
    ext/filters/client_channel/service_config.cc
    ext/filters/client_channel/service_config_channel_arg_filter.cc 
    ext/filters/client_channel/service_config_parser.cc 
    ext/filters/client_channel/subchannel.cc
    ext/filters/client_channel/subchannel_pool_interface.cc
    ext/filters/client_idle/client_idle_filter.cc
    ext/filters/deadline/deadline_filter.cc
    ext/filters/http/client/http_client_filter.cc
    ext/filters/http/client_authority_filter.cc
    ext/filters/http/http_filters_plugin.cc
    ext/filters/http/message_compress/message_compress_filter.cc
    ext/filters/http/message_compress/message_decompress_filter.cc 
    ext/filters/http/server/http_server_filter.cc
    ext/filters/max_age/max_age_filter.cc
    ext/filters/message_size/message_size_filter.cc
    ext/filters/workarounds/workaround_cronet_compression_filter.cc
    ext/filters/workarounds/workaround_utils.cc
    ext/transport/chttp2/alpn/alpn.cc
    ext/transport/chttp2/client/authority.cc
    ext/transport/chttp2/client/chttp2_connector.cc
    ext/transport/chttp2/client/insecure/channel_create.cc
    ext/transport/chttp2/client/insecure/channel_create_posix.cc
    ext/transport/chttp2/client/secure/secure_channel_create.cc
    ext/transport/chttp2/server/chttp2_server.cc
    ext/transport/chttp2/server/insecure/server_chttp2.cc
    ext/transport/chttp2/server/insecure/server_chttp2_posix.cc
    ext/transport/chttp2/server/secure/server_secure_chttp2.cc
    ext/transport/chttp2/transport/bin_decoder.cc
    ext/transport/chttp2/transport/bin_encoder.cc
    ext/transport/chttp2/transport/chttp2_plugin.cc
    ext/transport/chttp2/transport/chttp2_transport.cc
    ext/transport/chttp2/transport/context_list.cc
    ext/transport/chttp2/transport/flow_control.cc
    ext/transport/chttp2/transport/frame_data.cc
    ext/transport/chttp2/transport/frame_goaway.cc
    ext/transport/chttp2/transport/frame_ping.cc
    ext/transport/chttp2/transport/frame_rst_stream.cc
    ext/transport/chttp2/transport/frame_settings.cc
    ext/transport/chttp2/transport/frame_window_update.cc
    ext/transport/chttp2/transport/hpack_encoder.cc
    ext/transport/chttp2/transport/hpack_parser.cc
    ext/transport/chttp2/transport/hpack_table.cc
    ext/transport/chttp2/transport/http2_settings.cc
    ext/transport/chttp2/transport/huffsyms.cc
    ext/transport/chttp2/transport/incoming_metadata.cc
    ext/transport/chttp2/transport/parsing.cc
    ext/transport/chttp2/transport/stream_lists.cc
    ext/transport/chttp2/transport/stream_map.cc
    ext/transport/chttp2/transport/varint.cc
    ext/transport/chttp2/transport/writing.cc
    ext/transport/inproc/inproc_plugin.cc
    ext/transport/inproc/inproc_transport.cc
    ext/upb-generated/envoy/annotations/deprecation.upb.c 
    ext/upb-generated/envoy/annotations/resource.upb.c 
    ext/upb-generated/envoy/config/accesslog/v3/accesslog.upb.c 
    ext/upb-generated/envoy/config/cluster/v3/circuit_breaker.upb.c 
    ext/upb-generated/envoy/config/cluster/v3/cluster.upb.c 
    ext/upb-generated/envoy/config/cluster/v3/filter.upb.c 
    ext/upb-generated/envoy/config/cluster/v3/outlier_detection.upb.c 
    ext/upb-generated/envoy/config/core/v3/address.upb.c 
    ext/upb-generated/envoy/config/core/v3/backoff.upb.c 
    ext/upb-generated/envoy/config/core/v3/base.upb.c 
    ext/upb-generated/envoy/config/core/v3/config_source.upb.c 
    ext/upb-generated/envoy/config/core/v3/event_service_config.upb.c 
    ext/upb-generated/envoy/config/core/v3/extension.upb.c 
    ext/upb-generated/envoy/config/core/v3/grpc_service.upb.c 
    ext/upb-generated/envoy/config/core/v3/health_check.upb.c 
    ext/upb-generated/envoy/config/core/v3/http_uri.upb.c 
    ext/upb-generated/envoy/config/core/v3/protocol.upb.c 
    ext/upb-generated/envoy/config/core/v3/proxy_protocol.upb.c 
    ext/upb-generated/envoy/config/core/v3/socket_option.upb.c 
    ext/upb-generated/envoy/config/core/v3/substitution_format_string.upb.c 
    ext/upb-generated/envoy/config/endpoint/v3/endpoint.upb.c 
    ext/upb-generated/envoy/config/endpoint/v3/endpoint_components.upb.c 
    ext/upb-generated/envoy/config/endpoint/v3/load_report.upb.c 
    ext/upb-generated/envoy/config/listener/v3/api_listener.upb.c 
    ext/upb-generated/envoy/config/listener/v3/listener.upb.c 
    ext/upb-generated/envoy/config/listener/v3/listener_components.upb.c 
    ext/upb-generated/envoy/config/listener/v3/udp_listener_config.upb.c 
    ext/upb-generated/envoy/config/rbac/v3/rbac.upb.c 
    ext/upb-generated/envoy/config/route/v3/route.upb.c 
    ext/upb-generated/envoy/config/route/v3/route_components.upb.c 
    ext/upb-generated/envoy/config/route/v3/scoped_route.upb.c 
    ext/upb-generated/envoy/config/trace/v3/http_tracer.upb.c 
    ext/upb-generated/envoy/extensions/filters/network/http_connection_manager/v3/http_connection_manager.upb.c 
    ext/upb-generated/envoy/extensions/transport_sockets/tls/v3/cert.upb.c 
    ext/upb-generated/envoy/extensions/transport_sockets/tls/v3/common.upb.c 
    ext/upb-generated/envoy/extensions/transport_sockets/tls/v3/secret.upb.c 
    ext/upb-generated/envoy/extensions/transport_sockets/tls/v3/tls.upb.c 
    ext/upb-generated/envoy/service/cluster/v3/cds.upb.c 
    ext/upb-generated/envoy/service/discovery/v3/ads.upb.c 
    ext/upb-generated/envoy/service/discovery/v3/discovery.upb.c 
    ext/upb-generated/envoy/service/endpoint/v3/eds.upb.c 
    ext/upb-generated/envoy/service/listener/v3/lds.upb.c 
    ext/upb-generated/envoy/service/load_stats/v3/lrs.upb.c 
    ext/upb-generated/envoy/service/route/v3/rds.upb.c 
    ext/upb-generated/envoy/service/route/v3/srds.upb.c 
    ext/upb-generated/envoy/type/matcher/v3/metadata.upb.c 
    ext/upb-generated/envoy/type/matcher/v3/number.upb.c 
    ext/upb-generated/envoy/type/matcher/v3/path.upb.c 
    ext/upb-generated/envoy/type/matcher/v3/regex.upb.c 
    ext/upb-generated/envoy/type/matcher/v3/string.upb.c 
    ext/upb-generated/envoy/type/matcher/v3/value.upb.c 
    ext/upb-generated/envoy/type/metadata/v3/metadata.upb.c 
    ext/upb-generated/envoy/type/tracing/v3/custom_tag.upb.c 
    ext/upb-generated/envoy/type/v3/http.upb.c 
    ext/upb-generated/envoy/type/v3/percent.upb.c 
    ext/upb-generated/envoy/type/v3/range.upb.c 
    ext/upb-generated/envoy/type/v3/semantic_version.upb.c 
    ext/upb-generated/google/api/annotations.upb.c
    ext/upb-generated/google/api/expr/v1alpha1/checked.upb.c 
    ext/upb-generated/google/api/expr/v1alpha1/syntax.upb.c 
    ext/upb-generated/google/api/http.upb.c
    ext/upb-generated/google/protobuf/any.upb.c
    ext/upb-generated/google/protobuf/descriptor.upb.c
    ext/upb-generated/google/protobuf/duration.upb.c
    ext/upb-generated/google/protobuf/empty.upb.c
    ext/upb-generated/google/protobuf/struct.upb.c
    ext/upb-generated/google/protobuf/timestamp.upb.c
    ext/upb-generated/google/protobuf/wrappers.upb.c
    ext/upb-generated/google/rpc/status.upb.c
    ext/upb-generated/src/proto/grpc/gcp/altscontext.upb.c
    ext/upb-generated/src/proto/grpc/gcp/handshaker.upb.c
    ext/upb-generated/src/proto/grpc/gcp/transport_security_common.upb.c
    ext/upb-generated/src/proto/grpc/health/v1/health.upb.c
    ext/upb-generated/src/proto/grpc/lb/v1/load_balancer.upb.c
    ext/upb-generated/udpa/annotations/migrate.upb.c 
    ext/upb-generated/udpa/annotations/security.upb.c 
    ext/upb-generated/udpa/annotations/sensitive.upb.c 
    ext/upb-generated/udpa/annotations/status.upb.c 
    ext/upb-generated/udpa/annotations/versioning.upb.c 
    ext/upb-generated/udpa/core/v1/authority.upb.c 
    ext/upb-generated/udpa/core/v1/collection_entry.upb.c 
    ext/upb-generated/udpa/core/v1/context_params.upb.c 
    ext/upb-generated/udpa/core/v1/resource.upb.c 
    ext/upb-generated/udpa/core/v1/resource_locator.upb.c 
    ext/upb-generated/udpa/core/v1/resource_name.upb.c 
    ext/upb-generated/udpa/data/orca/v1/orca_load_report.upb.c
    ext/upb-generated/validate/validate.upb.c
    ext/xds/certificate_provider_registry.cc 
    ext/xds/google_mesh_ca_certificate_provider_factory.cc 
    ext/xds/xds_api.cc 
    ext/xds/xds_bootstrap.cc 
    ext/xds/xds_client.cc 
    ext/xds/xds_client_stats.cc 
    lib/avl/avl.cc 
    lib/backoff/backoff.cc 
    lib/channel/channel_args.cc 
    lib/channel/channel_stack.cc 
    lib/channel/channel_stack_builder.cc 
    lib/channel/channel_trace.cc 
    lib/channel/channelz.cc 
    lib/channel/channelz_registry.cc 
    lib/channel/connected_channel.cc 
    lib/channel/handshaker.cc 
    lib/channel/handshaker_registry.cc 
    lib/channel/status_util.cc 
    lib/compression/compression.cc 
    lib/compression/compression_args.cc 
    lib/compression/compression_internal.cc 
    lib/compression/message_compress.cc 
    lib/compression/stream_compression.cc 
    lib/compression/stream_compression_gzip.cc 
    lib/compression/stream_compression_identity.cc 
    lib/debug/stats.cc 
    lib/debug/stats_data.cc 
    lib/debug/trace.cc 
    lib/http/format_request.cc 
    lib/http/httpcli.cc 
    lib/http/httpcli_security_connector.cc 
    lib/http/parser.cc 
    lib/iomgr/buffer_list.cc 
    lib/iomgr/call_combiner.cc 
    lib/iomgr/cfstream_handle.cc 
    lib/iomgr/combiner.cc 
    lib/iomgr/dualstack_socket_posix.cc 
    lib/iomgr/endpoint.cc 
    lib/iomgr/endpoint_cfstream.cc 
    lib/iomgr/endpoint_pair_posix.cc 
    lib/iomgr/endpoint_pair_uv.cc 
    lib/iomgr/endpoint_pair_windows.cc 
    lib/iomgr/error.cc 
    lib/iomgr/error_cfstream.cc 
    lib/iomgr/ev_apple.cc 
    lib/iomgr/ev_epoll1_linux.cc 
    lib/iomgr/ev_epollex_linux.cc 
    lib/iomgr/ev_poll_posix.cc 
    lib/iomgr/ev_posix.cc 
    lib/iomgr/ev_windows.cc 
    lib/iomgr/exec_ctx.cc 
    lib/iomgr/executor.cc 
    lib/iomgr/executor/mpmcqueue.cc 
    lib/iomgr/executor/threadpool.cc 
    lib/iomgr/fork_posix.cc 
    lib/iomgr/fork_windows.cc 
    lib/iomgr/gethostname_fallback.cc 
    lib/iomgr/gethostname_host_name_max.cc 
    lib/iomgr/gethostname_sysconf.cc 
    lib/iomgr/grpc_if_nametoindex_posix.cc 
    lib/iomgr/grpc_if_nametoindex_unsupported.cc 
    lib/iomgr/internal_errqueue.cc 
    lib/iomgr/iocp_windows.cc 
    lib/iomgr/iomgr.cc 
    lib/iomgr/iomgr_custom.cc 
    lib/iomgr/iomgr_internal.cc 
    lib/iomgr/iomgr_posix.cc 
    lib/iomgr/iomgr_posix_cfstream.cc 
    lib/iomgr/iomgr_uv.cc 
    lib/iomgr/iomgr_windows.cc 
    lib/iomgr/is_epollexclusive_available.cc 
    lib/iomgr/load_file.cc 
    lib/iomgr/lockfree_event.cc 
    lib/iomgr/parse_address.cc 
    lib/iomgr/poller/eventmanager_libuv.cc 
    lib/iomgr/polling_entity.cc 
    lib/iomgr/pollset.cc 
    lib/iomgr/pollset_custom.cc 
    lib/iomgr/pollset_set.cc 
    lib/iomgr/pollset_set_custom.cc 
    lib/iomgr/pollset_set_windows.cc 
    lib/iomgr/pollset_uv.cc 
    lib/iomgr/pollset_windows.cc 
    lib/iomgr/resolve_address.cc 
    lib/iomgr/resolve_address_custom.cc 
    lib/iomgr/resolve_address_posix.cc 
    lib/iomgr/resolve_address_windows.cc 
    lib/iomgr/resource_quota.cc 
    lib/iomgr/sockaddr_utils.cc 
    lib/iomgr/socket_factory_posix.cc 
    lib/iomgr/socket_mutator.cc 
    lib/iomgr/socket_utils_common_posix.cc 
    lib/iomgr/socket_utils_linux.cc 
    lib/iomgr/socket_utils_posix.cc 
    lib/iomgr/socket_utils_uv.cc 
    lib/iomgr/socket_utils_windows.cc 
    lib/iomgr/socket_windows.cc 
    lib/iomgr/tcp_client.cc 
    lib/iomgr/tcp_client_cfstream.cc 
    lib/iomgr/tcp_client_custom.cc 
    lib/iomgr/tcp_client_posix.cc 
    lib/iomgr/tcp_client_windows.cc 
    lib/iomgr/tcp_custom.cc 
    lib/iomgr/tcp_posix.cc 
    lib/iomgr/tcp_server.cc 
    lib/iomgr/tcp_server_custom.cc 
    lib/iomgr/tcp_server_posix.cc 
    lib/iomgr/tcp_server_utils_posix_common.cc 
    lib/iomgr/tcp_server_utils_posix_ifaddrs.cc 
    lib/iomgr/tcp_server_utils_posix_noifaddrs.cc 
    lib/iomgr/tcp_server_windows.cc 
    lib/iomgr/tcp_uv.cc 
    lib/iomgr/tcp_windows.cc 
    lib/iomgr/time_averaged_stats.cc 
    lib/iomgr/timer.cc 
    lib/iomgr/timer_custom.cc 
    lib/iomgr/timer_generic.cc 
    lib/iomgr/timer_heap.cc 
    lib/iomgr/timer_manager.cc 
    lib/iomgr/timer_uv.cc 
    lib/iomgr/udp_server.cc 
    lib/iomgr/unix_sockets_posix.cc 
    lib/iomgr/unix_sockets_posix_noop.cc 
    lib/iomgr/wakeup_fd_eventfd.cc 
    lib/iomgr/wakeup_fd_nospecial.cc 
    lib/iomgr/wakeup_fd_pipe.cc 
    lib/iomgr/wakeup_fd_posix.cc 
    lib/iomgr/work_serializer.cc 
    lib/json/json_reader.cc 
    lib/json/json_util.cc 
    lib/json/json_writer.cc 
    lib/security/authorization/authorization_engine.cc 
    lib/security/authorization/evaluate_args.cc 
    lib/security/context/security_context.cc 
    lib/security/credentials/alts/alts_credentials.cc 
    lib/security/credentials/alts/check_gcp_environment.cc 
    lib/security/credentials/alts/check_gcp_environment_linux.cc 
    lib/security/credentials/alts/check_gcp_environment_no_op.cc 
    lib/security/credentials/alts/check_gcp_environment_windows.cc 
    lib/security/credentials/alts/grpc_alts_credentials_client_options.cc 
    lib/security/credentials/alts/grpc_alts_credentials_options.cc 
    lib/security/credentials/alts/grpc_alts_credentials_server_options.cc 
    lib/security/credentials/composite/composite_credentials.cc 
    lib/security/credentials/credentials.cc 
    lib/security/credentials/credentials_metadata.cc 
    lib/security/credentials/fake/fake_credentials.cc 
    lib/security/credentials/google_default/credentials_generic.cc 
    lib/security/credentials/google_default/google_default_credentials.cc 
    lib/security/credentials/iam/iam_credentials.cc 
    lib/security/credentials/jwt/json_token.cc 
    lib/security/credentials/jwt/jwt_credentials.cc 
    lib/security/credentials/jwt/jwt_verifier.cc 
    lib/security/credentials/local/local_credentials.cc 
    lib/security/credentials/oauth2/oauth2_credentials.cc 
    lib/security/credentials/plugin/plugin_credentials.cc 
    lib/security/credentials/ssl/ssl_credentials.cc 
    lib/security/credentials/tls/grpc_tls_certificate_distributor.cc 
    lib/security/credentials/tls/grpc_tls_credentials_options.cc 
    lib/security/credentials/tls/tls_credentials.cc 
    lib/security/credentials/xds/xds_credentials.cc 
    lib/security/security_connector/alts/alts_security_connector.cc 
    lib/security/security_connector/fake/fake_security_connector.cc 
    lib/security/security_connector/load_arcadia_root_certs.cpp 
    lib/security/security_connector/load_system_roots_fallback.cc 
    lib/security/security_connector/load_system_roots_linux.cc 
    lib/security/security_connector/local/local_security_connector.cc 
    lib/security/security_connector/security_connector.cc 
    lib/security/security_connector/ssl/ssl_security_connector.cc 
    lib/security/security_connector/ssl_utils.cc 
    lib/security/security_connector/ssl_utils_config.cc 
    lib/security/security_connector/tls/tls_security_connector.cc 
    lib/security/transport/client_auth_filter.cc 
    lib/security/transport/secure_endpoint.cc 
    lib/security/transport/security_handshaker.cc 
    lib/security/transport/server_auth_filter.cc 
    lib/security/transport/tsi_error.cc 
    lib/security/util/json_util.cc 
    lib/slice/b64.cc 
    lib/slice/percent_encoding.cc 
    lib/slice/slice.cc 
    lib/slice/slice_buffer.cc 
    lib/slice/slice_intern.cc 
    lib/slice/slice_string_helpers.cc 
    lib/surface/api_trace.cc 
    lib/surface/byte_buffer.cc 
    lib/surface/byte_buffer_reader.cc 
    lib/surface/call.cc 
    lib/surface/call_details.cc 
    lib/surface/call_log_batch.cc 
    lib/surface/channel.cc 
    lib/surface/channel_init.cc 
    lib/surface/channel_ping.cc 
    lib/surface/channel_stack_type.cc 
    lib/surface/completion_queue.cc 
    lib/surface/completion_queue_factory.cc 
    lib/surface/event_string.cc 
    lib/surface/init.cc 
    lib/surface/init_secure.cc 
    lib/surface/lame_client.cc 
    lib/surface/metadata_array.cc 
    lib/surface/server.cc 
    lib/surface/validate_metadata.cc 
    lib/surface/version.cc 
    lib/transport/authority_override.cc 
    lib/transport/bdp_estimator.cc 
    lib/transport/byte_stream.cc 
    lib/transport/connectivity_state.cc 
    lib/transport/error_utils.cc 
    lib/transport/metadata.cc 
    lib/transport/metadata_batch.cc 
    lib/transport/pid_controller.cc 
    lib/transport/static_metadata.cc 
    lib/transport/status_conversion.cc 
    lib/transport/status_metadata.cc 
    lib/transport/timeout_encoding.cc 
    lib/transport/transport.cc 
    lib/transport/transport_op_string.cc 
    lib/uri/uri_parser.cc 
    plugin_registry/grpc_plugin_registry.cc
    tsi/alts/crypt/aes_gcm.cc
    tsi/alts/crypt/gsec.cc
    tsi/alts/frame_protector/alts_counter.cc
    tsi/alts/frame_protector/alts_crypter.cc
    tsi/alts/frame_protector/alts_frame_protector.cc
    tsi/alts/frame_protector/alts_record_protocol_crypter_common.cc
    tsi/alts/frame_protector/alts_seal_privacy_integrity_crypter.cc
    tsi/alts/frame_protector/alts_unseal_privacy_integrity_crypter.cc
    tsi/alts/frame_protector/frame_handler.cc
    tsi/alts/handshaker/alts_handshaker_client.cc
    tsi/alts/handshaker/alts_shared_resource.cc
    tsi/alts/handshaker/alts_tsi_handshaker.cc
    tsi/alts/handshaker/alts_tsi_utils.cc
    tsi/alts/handshaker/transport_security_common_api.cc
    tsi/alts/zero_copy_frame_protector/alts_grpc_integrity_only_record_protocol.cc
    tsi/alts/zero_copy_frame_protector/alts_grpc_privacy_integrity_record_protocol.cc
    tsi/alts/zero_copy_frame_protector/alts_grpc_record_protocol_common.cc
    tsi/alts/zero_copy_frame_protector/alts_iovec_record_protocol.cc
    tsi/alts/zero_copy_frame_protector/alts_zero_copy_grpc_protector.cc
    tsi/fake_transport_security.cc
    tsi/local_transport_security.cc
    tsi/ssl/session_cache/ssl_session_boringssl.cc
    tsi/ssl/session_cache/ssl_session_cache.cc
    tsi/ssl/session_cache/ssl_session_openssl.cc
    tsi/ssl_transport_security.cc
    tsi/transport_security.cc
    tsi/transport_security_grpc.cc
)

END()
