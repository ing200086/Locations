#Scope
This document folder will keep some thoughts, to-dos, and any other ideas.

#Thoughts
##Overview
It seems there are two general structures. A relational graph structure which creates relations between entities, and the entities themselves.

###Relational Graph
A relational graph should be able to do the following.  
* Identify two or more entities (by unique id) which are related.  
* Identify what type of relationship the entities have  
  - Could be initially default meaning no context, but expanded to "has, within, nextTo, etc." later.  
* Have the ability to find a path between two entities (by unique id)  
* 

Relation Sets can hold relation sets and relation nodes...
  
#### Example implementation
  ```c++
template <typename T>
class RelationNode {
    T* _nodeFrom;
    T* _nodeTo;
    
public:
    RelationNode(T &nodeFrom, T &nodeTo): _nodeFrom(&nodeFrom), _nodeTo(&nodeTo) {  }
    
    T* from() const {return _nodeFrom;}
    T* to() const {return _nodeTo;}
};
  ```
  ```c++
template <typename T>
class RelationNodeSet {
    std::vector <T> _set;
public:
    //void add(RelationNode<T> &relation) { _set.push_back(&relation); }
};
  ```
