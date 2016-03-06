#include "UniqueCollection.h"
#include "gmock/gmock.h"
    using ::testing::Eq;

class TestUniqueCollection: public ::testing::Test {
protected:
    using element_t = int;
    using collection_t = typename ::Context::UniqueCollection<element_t>;
    collection_t _collection;
    collection_t _collection2;

    element_t test_e[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

    void fullyPopulateCollection() {
        _collection.clear();
        _collection.add(test_e[0]);
        _collection.add(test_e[1]);
        _collection.add(test_e[2]);
        _collection.add(test_e[3]);
        _collection.add(test_e[4]);
        _collection.add(test_e[5]);
        _collection.add(test_e[6]);
        _collection.add(test_e[7]);
        _collection.add(test_e[7]);
        _collection.add(test_e[9]);
    }
};

TEST_F(TestUniqueCollection, InitializedEmpty) {
    ASSERT_TRUE(_collection.empty());
}

TEST_F(TestUniqueCollection, CanTestForElementsItDoesNotContain) {
    ASSERT_FALSE(_collection.contains(test_e[0]));
}

TEST_F(TestUniqueCollection, CanAddAndVerifyElements) {
    _collection.add(test_e[0]);
    _collection.add(test_e[1]);

    ASSERT_TRUE(_collection.contains(test_e[0]));
    ASSERT_TRUE(_collection.contains(test_e[1]));
}

TEST_F(TestUniqueCollection, CanStringAddTogetherAndVerifyElements) {
    _collection.add(test_e[0]).add(test_e[1]);

    ASSERT_TRUE(_collection.contains(test_e[0]));
    ASSERT_TRUE(_collection.contains(test_e[1]));
}

TEST_F(TestUniqueCollection, CanGetCollectionSize) {
    _collection.add(test_e[0]);

    ASSERT_THAT(_collection.size(), Eq(1));
}

TEST_F(TestUniqueCollection, OnlyAcceptsUniqueElements) {
    _collection.add(test_e[0]);
    _collection.add(test_e[0]);

    ASSERT_THAT(_collection.size(), Eq(1));
}

TEST_F(TestUniqueCollection, OnlyAcceptsUniqueElementsFromCollection) {
    _collection.add(test_e[2]);
    _collection.add(test_e[7]);

    _collection2.add(test_e[2]);
    _collection2.add(test_e[7]);
    _collection2.add(test_e[4]);

    _collection.add(_collection2);

    ASSERT_THAT(_collection.size(), Eq(3));
}

TEST_F(TestUniqueCollection, CanVerifyOneCollectionIsSubSet) {
    fullyPopulateCollection();
    _collection2.add(test_e[2]);
    _collection2.add(test_e[7]);
    _collection2.add(test_e[4]);

    ASSERT_TRUE(_collection.contains(test_e[2]));
    ASSERT_TRUE(_collection.contains(test_e[7]));
    ASSERT_TRUE(_collection.contains(test_e[4]));

    ASSERT_TRUE(_collection.contains(_collection2));
}

TEST_F(TestUniqueCollection, CanClearElements) {
    _collection.add(test_e[0]);
    _collection.clear();
    ASSERT_TRUE(_collection.empty());
}

TEST_F(TestUniqueCollection, EqualityReturnsFalseForUnequalCollections) {
    _collection.add(test_e[0]);
    ASSERT_FALSE(_collection == _collection2);
}

TEST_F(TestUniqueCollection, EqualityReturnsTrueForEqualCollections) {
    _collection.add(test_e[0]);
    _collection2.add(test_e[0]);
    ASSERT_TRUE(_collection == _collection2);
}

TEST_F(TestUniqueCollection, CanTestIfCollectionsAreEqualEvenInDifferentOrder) {
    _collection.add(test_e[0]).add(test_e[1]);
    _collection2.add(test_e[1]).add(test_e[0]);

    ASSERT_THAT(_collection, Eq(_collection2));
}

TEST_F(TestUniqueCollection, CanAddOneCollectionToAnother) {
    _collection.add(test_e[0]);
    _collection.add(test_e[1]);

    _collection2.add(test_e[2]);
    _collection2.add(test_e[3]);

    ASSERT_FALSE(_collection == _collection2);
    ASSERT_FALSE(_collection.contains(test_e[2]));

    _collection.add(_collection2);

    ASSERT_TRUE(_collection.contains(test_e[2]));
}

TEST_F(TestUniqueCollection, CanFilterOneCollectionUsingAnother) {
    collection_t _expectedCollection;

    int uniqueToOne = 4;
    int duplicatedInBoth = 10;
    int uniqueToTwo = 100;

    _collection.add(uniqueToOne);
    _collection.add(duplicatedInBoth);

    _collection2.add(uniqueToTwo);
    _collection2.add(duplicatedInBoth);

    _expectedCollection.add(uniqueToOne);

    ASSERT_THAT(_collection.filter(_collection2), Eq(_expectedCollection));
}

TEST_F(TestUniqueCollection, CanFilterOneCollectionUsingAnotherCompletely) {
    int duplicatedInBoth = 10;
    int uniqueToTwo = 100;

    _collection.add(duplicatedInBoth);

    _collection2.add(uniqueToTwo);
    _collection2.add(duplicatedInBoth);

    ASSERT_THAT(_collection.filter(_collection2).empty(), Eq(true));
}