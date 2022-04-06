#pragma once
#include "defs.h"

#include "local_rate_limiter.h"

#include <ydb/core/grpc_services/base/base.h>

#include <ydb/public/api/protos/ydb_auth.pb.h>
#include <ydb/public/api/protos/ydb_clickhouse_internal.pb.h>

#include <ydb/public/api/protos/ydb_coordination.pb.h>
#include <ydb/public/api/protos/ydb_discovery.pb.h>
#include <ydb/public/api/protos/ydb_experimental.pb.h>
#include <ydb/public/api/protos/ydb_status_codes.pb.h>
#include <ydb/public/api/protos/ydb_table.pb.h>
#include <ydb/public/api/protos/ydb_s3_internal.pb.h>
#include <ydb/public/api/protos/ydb_persqueue_cluster_discovery.pb.h>
#include <ydb/public/api/protos/ydb_persqueue_v1.pb.h>
#include <ydb/public/api/protos/ydb_rate_limiter.pb.h>

#include <ydb/public/api/protos/yq.pb.h>

#include <ydb/public/api/grpc/draft/dummy.pb.h>

#include <ydb/public/lib/operation_id/operation_id.h>

#include <util/generic/maybe.h>

namespace NKikimr {
namespace NGRpcService {

template <>
void FillYdbStatus(Ydb::PersQueue::V1::StreamingWriteServerMessage& resp, const NYql::TIssues& issues, Ydb::StatusIds::StatusCode status);

template <>
void FillYdbStatus(Ydb::PersQueue::V1::MigrationStreamingReadServerMessage& resp, const NYql::TIssues& issues, Ydb::StatusIds::StatusCode status);

template <>
void FillYdbStatus(Draft::Dummy::PingResponse& resp, const NYql::TIssues& issues, Ydb::StatusIds::StatusCode status);

template <>
void FillYdbStatus(Ydb::Coordination::SessionResponse& resp, const NYql::TIssues& issues, Ydb::StatusIds::StatusCode status);

using TEvListEndpointsRequest = TGRpcRequestWrapper<TRpcServices::EvListEndpoints, Ydb::Discovery::ListEndpointsRequest, Ydb::Discovery::ListEndpointsResponse, true>;

using TEvS3ListingRequest = TGRpcRequestWrapper<TRpcServices::EvS3Listing, Ydb::S3Internal::S3ListingRequest, Ydb::S3Internal::S3ListingResponse, true>;
using TEvBiStreamPingRequest = TGRpcRequestBiStreamWrapper<TRpcServices::EvBiStreamPing, Draft::Dummy::PingRequest, Draft::Dummy::PingResponse>;
using TEvExperimentalStreamQueryRequest = TGRpcRequestWrapper<TRpcServices::EvExperimentalStreamQuery, Ydb::Experimental::ExecuteStreamQueryRequest, Ydb::Experimental::ExecuteStreamQueryResponse, false>;

using TEvStreamPQWriteRequest = TGRpcRequestBiStreamWrapper<TRpcServices::EvStreamPQWrite, Ydb::PersQueue::V1::StreamingWriteClientMessage, Ydb::PersQueue::V1::StreamingWriteServerMessage>;
using TEvStreamPQReadRequest = TGRpcRequestBiStreamWrapper<TRpcServices::EvStreamPQRead, Ydb::PersQueue::V1::MigrationStreamingReadClientMessage, Ydb::PersQueue::V1::MigrationStreamingReadServerMessage>;
using TEvPQReadInfoRequest = TGRpcRequestWrapper<TRpcServices::EvPQReadInfo, Ydb::PersQueue::V1::ReadInfoRequest, Ydb::PersQueue::V1::ReadInfoResponse, true>;
using TEvPQDropTopicRequest = TGRpcRequestValidationWrapper<TRpcServices::EvPQDropTopic, Ydb::PersQueue::V1::DropTopicRequest, Ydb::PersQueue::V1::DropTopicResponse, true>;
using TEvPQCreateTopicRequest = TGRpcRequestValidationWrapper<TRpcServices::EvPQCreateTopic, Ydb::PersQueue::V1::CreateTopicRequest, Ydb::PersQueue::V1::CreateTopicResponse, true>;
using TEvPQAlterTopicRequest = TGRpcRequestValidationWrapper<TRpcServices::EvPQAlterTopic, Ydb::PersQueue::V1::AlterTopicRequest, Ydb::PersQueue::V1::AlterTopicResponse, true>;
using TEvPQDescribeTopicRequest = TGRpcRequestValidationWrapper<TRpcServices::EvPQDescribeTopic, Ydb::PersQueue::V1::DescribeTopicRequest, Ydb::PersQueue::V1::DescribeTopicResponse, true>;
using TEvPQAddReadRuleRequest = TGRpcRequestValidationWrapper<TRpcServices::EvPQAddReadRule, Ydb::PersQueue::V1::AddReadRuleRequest, Ydb::PersQueue::V1::AddReadRuleResponse, true>;
using TEvPQRemoveReadRuleRequest = TGRpcRequestValidationWrapper<TRpcServices::EvPQRemoveReadRule, Ydb::PersQueue::V1::RemoveReadRuleRequest, Ydb::PersQueue::V1::RemoveReadRuleResponse, true>;

using TEvDiscoverPQClustersRequest = TGRpcRequestWrapper<TRpcServices::EvDiscoverPQClusters, Ydb::PersQueue::ClusterDiscovery::DiscoverClustersRequest, Ydb::PersQueue::ClusterDiscovery::DiscoverClustersResponse, true>;
using TEvCreateRateLimiterResource = TGRpcRequestWrapper<TRpcServices::EvCreateRateLimiterResource, Ydb::RateLimiter::CreateResourceRequest, Ydb::RateLimiter::CreateResourceResponse, true, TRateLimiterMode::Rps>;
using TEvAlterRateLimiterResource = TGRpcRequestWrapper<TRpcServices::EvAlterRateLimiterResource, Ydb::RateLimiter::AlterResourceRequest, Ydb::RateLimiter::AlterResourceResponse, true, TRateLimiterMode::Rps>;
using TEvDropRateLimiterResource = TGRpcRequestWrapper<TRpcServices::EvDropRateLimiterResource, Ydb::RateLimiter::DropResourceRequest, Ydb::RateLimiter::DropResourceResponse, true, TRateLimiterMode::Rps>;
using TEvListRateLimiterResources = TGRpcRequestWrapper<TRpcServices::EvListRateLimiterResources, Ydb::RateLimiter::ListResourcesRequest, Ydb::RateLimiter::ListResourcesResponse, true, TRateLimiterMode::Rps>;
using TEvDescribeRateLimiterResource = TGRpcRequestWrapper<TRpcServices::EvDescribeRateLimiterResource, Ydb::RateLimiter::DescribeResourceRequest, Ydb::RateLimiter::DescribeResourceResponse, true, TRateLimiterMode::Rps>;
using TEvAcquireRateLimiterResource = TGRpcRequestWrapper<TRpcServices::EvAcquireRateLimiterResource, Ydb::RateLimiter::AcquireResourceRequest, Ydb::RateLimiter::AcquireResourceResponse, true>;

using TEvLoginRequest = TGRpcRequestWrapperNoAuth<TRpcServices::EvLogin, Ydb::Auth::LoginRequest, Ydb::Auth::LoginResponse>;
using TEvCoordinationSessionRequest = TGRpcRequestBiStreamWrapper<TRpcServices::EvCoordinationSession, Ydb::Coordination::SessionRequest, Ydb::Coordination::SessionResponse>;

} // namespace NGRpcService
} // namespace NKikimr
