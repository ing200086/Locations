#include <vector>

namespace Context {
    template <class T>
    class UniqueCollection {
        using collection_t = std::vector<T>;
        collection_t _collection;
    public:
        using iterator = typename collection_t::iterator;
        using const_iterator = typename collection_t::const_iterator;

        iterator begin() { return _collection.begin(); }
        iterator end() { return _collection.end(); }
        const_iterator begin() const { return _collection.begin(); }
        const_iterator end() const { return _collection.end(); }
        const_iterator cbegin() const { return _collection.cbegin(); }
        const_iterator cend() const { return _collection.cend(); }

        UniqueCollection<T>& add(T element) {
            if (!contains(element)) { _collection.push_back(element); }
            return (*this);
        }

        UniqueCollection<T>& add(UniqueCollection<T> elements) {
            for(T e : elements) { add(e); }
            return (*this);
        }

        bool contains(const T &element) const{
            return (find (_collection.begin(), _collection.end(), element) != _collection.end());
        }

        bool contains(const UniqueCollection<T> &needles) const {
            for(T e : needles) { if (!contains(e)) { return false;} }
            return true;
        }

        bool operator==(const UniqueCollection<T> &rhs) const {
            if (_collection.size() != rhs._collection.size()) { return false; }
            return contains(rhs);
        }

        UniqueCollection<T> filter(const UniqueCollection<T> &mask) {
            UniqueCollection<T> result;

            for(T e : _collection) { if (!mask.contains(e)) { result.add(e); } }
            return result;
        }

        bool empty() { return _collection.empty(); }

        int size() const {
            return _collection.size();
        }

        UniqueCollection<T>& clear() {
            _collection.clear();
            return (*this);
        }
    };
}