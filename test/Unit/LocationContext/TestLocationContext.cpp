#include "gmock/gmock.h"

TEST(GenerateContext, withDescription) {
  Context myContext("Home");
  
  ASSERT_THAT(myContext.description(), Eq("Home"));
}
