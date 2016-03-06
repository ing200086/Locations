#include "Node.h"
    using ::Context::Node;
#include "Relationship.h"
    using ::Context::Relationship;
#include "gmock/gmock.h"
    using ::testing::Eq;

TEST(RelationshipsCan, BeDefinedDirectlyAndTestedNegative) {
    Node base;
    Node node;

    ASSERT_FALSE(Relationship::existsBetween(base, node));
}
