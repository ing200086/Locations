# Locations
Locations (physical/logical) are described by a graph. By their very nature locations need a context which acts like a base (i.e. "Earth"). From this context, the location is focused with additional contexts (i.e. "USA", "TX", "77022", "North Houston Rosslyn Rd", "122221"). At any time the focusing of the context can stop, and this is still a valid location.
# Scope
The methods for focusing the context may change based on the sub context. In the USA addresses are given by a street and a street number, in contrast in Japan they are given by a block and a block number. The location objects need to be accepting to this difference.

Additionally, some places can only be described by relating multiple sub-context. An simple example of this would be a street corner. In some parts of Africa, locations are given based on landmarks since a traditional street style form of context cannot be made.

# Out of scope
The location class will not validate locations. It will allow the user to enter any string of contexts in any order. I am expecting I will need to change this in the future, but for now I am assuming the user will always enter the context from largest to smallest, but again the system has no idea which context is larger.

Actual physical locations are also not in scope. Currently locations will generate descriptive locations, but in the future this can be added to the scope. Since this may be a downloaded database from data.gov or some other method, it is not critical to the current design.

# User cases
## Building a Context a from Scratch
```c++
LocationNode Country("USA");
LocationNode ZipCode("77022");
LocationNode State("TX");
LocationNode City("Houston");
LocationNode Street("Linden Street");
LocationNode Number("13");
LocationNode Unit("2B");

LocationGraph myLocationTopToBottom = Country
                                        .has(ZipCode)
                                        .has(State)
                                        .has(City)
                                        .has(Street)
                                        .has(Number)
                                        .has(Unit);
                                        
LocationGraph myLocationBottomToTop = Unit
                                        .isWithin(Number)
                                        .isWithin(Street)
                                        .isWithin(City)
                                        .isWithin(State)
                                        .isWithin(ZipCode)
                                        .isWithin(Country);

ASSERT_THAT(myLocationTopToBottom, Eq(myLocationBottomToTop));
```
## Contexting with a non-terminal address (i.e. down to a zip code)
```c++
LocationNode Country("USA");
LocationNode ZipCode("77022");
LocationNode State("TX");
LocationNode City("Houston");

LocationGraph myLocation = Country.refineTo(ZipCode).refineTo(State).refineTo(City);

ASSERT_THAT(myLocation.toString(), Eq("Houston TX 77022 USA");
```
## Contexting a traditional Japanese style address
```c++
LocationContext Country("Japan");
LocationContext PostalCode("100-6390");
LocationContext Province("Tokyo-to");
LocationContext Locality("Chiyoda-ku");
LocationContext DependentLocality("Marunochi");
LocationContext Street("Chome");
LocationContext Number("2");

LocationContext myLocation = Country.refineTo(PostalCode).refineTo(Province).refineTo(Locality).refineTo(DependentLocality).refineTo(Street).refineTo(Number);

ASSERT_THAT(myLocation.toString(), Eq("2 Chome Marunochi Chiyoda-ku Tokyo-to 100-6390 Japan"));
```

## Contexting by combining two contexts
```c++
LocationNode Country("USA");
LocationNode ZipCode("77022");
LocationNode State("TX");
LocationNode City("Houston");

LocationNode Street("Linden Street");
LocationNode CrossStreet("Main Street");

LocationOfIntersection.isIntersectionOf(Street).and(CrossStreet);

LocationContext myLocation = Country.refineTo(ZipCode).refineTo(State).refineTo(City).refineTo(LocationOfIntersection);

ASSERT_THAT(myLocation.toString(), Eq("Intersection of Linden Street and Main Street Houston TX 77022 USA"));
```
## Contexting by landmarks
```c++
LocationContext Country("Kenya");
LocationContext State("Malindi");

LocationContext Tree("Big Tree");
LocationContext Building("City Hall");
LocationContext River("Yellow River");

CombinedContext LocationWithLandmarks.isBetween(Tree).and(Building).and(River);

LocationContext myLocation = Country.refineTo(State).refineTo(LocationWithLandmarks);
ASSERT_THAT(myLocation.toString(), Eq("Between Big Tree, City Hall, and Yellow River Malindi Kenya"));
```
