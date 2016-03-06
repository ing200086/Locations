#include "Relationship.h"
    using ::Context::Relationship;
#include "Node.h"
    using ::Context::Node;

#include "gmock/gmock.h"
    using ::testing::Eq;


TEST(RelationshipsCan, BeDefinedDirectlyAndTestedNegative) {
    Node base;
    Node node;

    ASSERT_FALSE(Relationship::existsBetween(base, node));
}

TEST(RelationshipsCan, BeDefinedDirectlyAndTested) {
    Node base;
    Node node;

    Relationship::defineBetween(base, node);
    ASSERT_TRUE(Relationship::existsBetween(base, node));
}

TEST(RelationshipsCan, BeDefinedIndirectlyAndTested) {
    Node base;
    Node connection;
    Node node;

    Relationship::defineBetween(base, connection);
    Relationship::defineBetween(connection, node);

    ASSERT_TRUE(Relationship::existsBetween(base, node));
}

TEST(RelationshipsCan, BeDefinedIndirectlyAndTestedRegardlessOfLinks) {
    Node base;
    Node connection1;
    Node connection2;
    Node node;

    Relationship::defineBetween(base, connection1);
    Relationship::defineBetween(connection1, connection2);
    Relationship::defineBetween(connection2, node);

    ASSERT_TRUE(Relationship::existsBetween(base, node));
}