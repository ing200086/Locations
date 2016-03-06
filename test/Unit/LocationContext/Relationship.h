#ifndef __RELATIONSHIP_H__
#define __RELATIONSHIP_H__

#include "Node.h"

#include <algorithm>
    using ::std::find;

namespace Context {
    class Relationship {
    private:
        using Element = Node;
        using eCollection = UniqueCollection<Element*>;

        static eCollection nodesRelatedTo(eCollection oldFrontier) {
            eCollection result;
            for(Element* e : oldFrontier) { result.add(e->connections()); }
            return result;
        }

    public:
        static void defineBetween(Element &A, Element &B) {
            A.linkTo(B);
            B.linkTo(A);
        }

        static bool existsBetween(Element &A, Element &B) {
            eCollection frontier = A.connections();
            eCollection explored;
            bool result = false;

            while (!frontier.empty() && !result) {
                result = frontier.contains(&B);
                explored.add(frontier);
                frontier = nodesRelatedTo(frontier).filter(explored);
            }

            return result;
        }
    };
}

#endif