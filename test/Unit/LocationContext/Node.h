#ifndef __NODE_H__
#define __NODE_H__

#include "UniqueCollection.h"

namespace Context {
    class Node {
    private:
        UniqueCollection<Node *> _connections;

    public:
        void linkTo(Node &nodeToLink) {  this->_connections.add(&nodeToLink);  }
        UniqueCollection<Node *> connections() {  return _connections;  }
    };
}

#endif