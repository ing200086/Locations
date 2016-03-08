#Scope
This document folder will keep some thoughts, to-dos, and any other ideas.

#Thoughts
##Overview
It seems there are two general structures. A relational graph structure which creates relations between entities, and the entities themselves.

###Relational Graph
A relational graph should be able to do the following.
  > Identify two or more entities (by unique id) which are related.
  > Identify what type of relationship the entities have
      - Could be initially default meaning no context, but expanded to "has, within, nextTo, etc." later.
  > Have the ability to find a path between two entities (by unique id)
#### Example implementation
  ```c++
  class EntityWithId {
    IUuid *id()=0;
  };
  
  class RelationNode {
    Uuid* _vertexA;
    Uuid* _vertexB;
    
    string _relation;
    
  public:
    RelationNode(EntityWithId &A, EntityWithId &B, string &relation) 
      _vertexA(A), _vertexB(B), _relation(relation) {}
    
    Uuid* A() const {return _vertexA;}
    Uuid* B() const {return _vertexA;}
    string Relation() const {return _relation;}
  };
  ```
