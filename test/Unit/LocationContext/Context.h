// #include <string>
//     using ::std::string;
// #include <map>
//     using ::std::map;

// namespace Context {
//     namespace Relation {
//         class Relationship {
//         public:
//             void to(::Context::Node relatedNode) {

//             }
//         };

//         class has: public Relationship {  };
//     }

//     class Node {
//     private:
//         bool _hasRelation = false;

//     public:
//         Relation::Relationship isRelatedVia(Relation::Relationship method) {
//             return method;
//         }

//         void isWithin(Node &parent) {
//             _hasRelation = true;
//         }

//         bool isRelatedTo(Node &other) {
//             return _hasRelation;
//         }
//     };
// }