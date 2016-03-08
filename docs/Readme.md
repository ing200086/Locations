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
  
#### Example implementation
  ```c++
  class EntityWithId {
    IUuid *id()=0;
  };
  ```
  ```c++
  class RelationNode {
    IUuid* _vertexA;
    IUuid* _vertexB;
  public:
    RelationNode(EntityWithId &A, EntityWithId &B) 
      _vertexA(A), _vertexB(B) {}
    IUuid* A() const {return _vertexA;}
    IUuid* B() const {return _vertexB;}
  };
  ```
  ```c++
  class RelationSet {
    vector<RelationNode*> _set;
  public:
    RelationSet() {}
    void add(IUuid &A, IUuid &B) {
      add(new RelationNode(A, B));
    }
    void add(RelationNode &relation) {
      _set.push_back(relation);
    }
  };
  ```
