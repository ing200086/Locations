#include <string>
    using ::std::string;
    using ::std::to_string;

#include <vector>
    using ::std::vector;

#include <algorithm>
    using ::std::find;

class Node {
    static int count;
    string _id;

    vector<Node*> _connections;

public:
    Node() {
        _id = to_string(count++);
    }
    
    string id() {
        return _id;
    }

    void linkTo(Node &nodeToLink) {
        this->_connections.push_back(&nodeToLink);
    }

    bool isLinkedTo(Node &node) {
        vector<Node *>::iterator it;

        it = find (_connections.begin(), _connections.end(), &node);
        return (it != _connections.end());
    }

    vector<Node *> connections() {
        return _connections;
    }
};
int Node::count = 0;

class Relationship {
public:
    static void define(Node &A, Node &B) {
        A.linkTo(B);
        B.linkTo(A);
    }

    static bool existsBetween(Node &A, Node &B) {
        vector <Node *> nodesToTest = A.connections();

        for (unsigned int i = 0; i < nodesToTest.size(); i++) {
            if (B.isLinkedTo((*nodesToTest[i]))) {return true;}
        }

        return false;
    }
};

#include "gmock/gmock.h"
    using ::testing::Eq;

TEST(NodeCan, LinkToAnotherNode) {
    Node base;
    Node node;

    base.linkTo(node);
    ASSERT_TRUE(base.isLinkedTo(node));
}

TEST(RelationshipsCan, BeDefinedDirectlyAndTested) {
    Node base;
    Node node;

    Relationship::define(base, node);

    ASSERT_TRUE(base.isLinkedTo(node));
    ASSERT_TRUE(node.isLinkedTo(base));
    
}

TEST(RelationshipsCan, BeDefinedIndirectlyAndTested) {
    Node base;
    Node connection;
    Node node;

    Relationship::define(base, connection);
    Relationship::define(connection, node);

    ASSERT_FALSE(base.isLinkedTo(node));
    ASSERT_TRUE(Relationship::existsBetween(base, node));
}
