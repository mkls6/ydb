#include <cmath>
#include <cstdint>
#include <iterator>
#include <library/cpp/testing/unittest/registar.h>
#include <ctime>
#include <vector>
#include <algorithm>

#include <contrib/libs/apache/arrow/cpp/src/arrow/api.h>
#include <contrib/libs/apache/arrow/cpp/src/arrow/compute/api.h>

#include "func_common.h"
#include "functions.h"
#include "custom_registry.h"
#include "arrow_helpers.h"


namespace NKikimr::NArrow {

namespace cp = ::arrow::compute;


Y_UNIT_TEST_SUITE(RoundsTest) {
    Y_UNIT_TEST(RoundTest) {
        for (auto ty : cp::internal::FloatingPointTypes()) {
            auto arg = NumVecToArray(ty, {2.34, 5.65, 10.01, 100.0});
            auto expRes = NumVecToArray(ty, {2, 6, 10, 100});
            auto res = arrow::compute::CallFunction(TRound::Name, {arg}, GetCustomExecContext());
            UNIT_ASSERT(res->Equals(expRes));
        }
    }

    Y_UNIT_TEST(RoundBankersTest) {
        for (auto ty : cp::internal::FloatingPointTypes()) {
            auto arg = NumVecToArray(ty, {2.34, 5.5, 6.5, 100.7});
            auto expRes = NumVecToArray(ty, {2, 6, 6, 101});
            auto res = arrow::compute::CallFunction(TRoundBankers::Name, {arg}, GetCustomExecContext());
            UNIT_ASSERT(res->Equals(expRes));
        }
    }

    Y_UNIT_TEST(RoundToExp2Test) {
        for (auto ty : cp::internal::NumericTypes()) {
            auto arg = NumVecToArray(ty, {2.34, 5.5, 6.5, 100.7, 54});
            auto expRes = NumVecToArray(ty, {2, 4, 4, 64, 32});
            auto res = arrow::compute::CallFunction(TRoundToExp2::Name, {arg}, GetCustomExecContext());
            UNIT_ASSERT(res->Equals(expRes));
        }
    }

}

}
