#include "CppUTest/TestHarness.h"

#include "foo.h"

TEST_GROUP(TestMySum){ void setup(){} void teardown(){} };

TEST(TestMySum, Test_MySumBasic)
{
  LONGS_EQUAL(7, my_sum(3, 4));
  LONGS_EQUAL(0, my_sum(-1, 1));
  LONGS_EQUAL(-3, my_sum(9, -8));
}
