# Locations
Locations (physical/logical) are described by a graph. By their very nature locations need a context which acts like a base (i.e. "Earth"). From this context, the location is focused with additional contexts (i.e. "USA", "TX", "77022", "North Houston Rosslyn Rd", "122221"). At any time the focusing of the context can stop, and this is still a valid location.
# Scope
The methods for focusing the context may change based on the sub context. In the USA addresses are given by a street and a street number, in contrast in Japan they are given by a block and a block number. The location objects need to be accepting to this difference.

Additionally, some places can only be described by relating multiple sub-context. An simple example of this would be a street corner. In some parts of Africa, locations are given based on landmarks since a traditional street style form of context cannot be made.

# Out of scope
The location class will not validate locations. It will allow the user to enter any string of contexts in any order. I am expecting I will need to change this in the future, but for now I am assuming the user will always enter the context from largest to smallest, but again the system has no idea which context is larger.

Actual physical locations are also not in scope. Currently locations will generate descriptive locations, but in the future this can be added to the scope. Since this may be a downloaded database from data.gov or some other method, it is not critical to the current design.

# User cases
## Building a Context Graph a from Scratch
```c++
LocationContext Country("USA");
LocationContext ZipCode("77022");
LocationContext State("TX");
LocationContext City("Houston");
LocationContext Street("Linden Street");
LocationContext Number("13");
LocationContext Unit("2B");

// Linking graph from top down
City
  .has(Street)
  .has(Number)
  .has(Unit);

// Linking graph from bottom to the top
City
  .isWithin(State)
  .isWithin(ZipCode)
  .isWithin(Country);

//Location Context should be able to describe itself
ASSERT_THAT(Unit.describe(), Eq("2B"));

//Using a Context should return however the writer should apply
ASSERT_THAT(Unit.describe(new BottomToTopContextWriter().setDelimiter(" ")), Eq("2B 13 Linden Street Houston TX 77022 USA"));
ASSERT_THAT(City.describe(new BottomToTopContextWriter().setDelimiter(" ")), Eq("Houston TX 77022 USA"));

```
## Creating a LocationGraph which has a combination of two nodes
```c++
LocationContext City("Houston");

LocationContext Street("Linden Street");
LocationContext CrossStreet("Main Street");

LocationContext Tree("Big Tree").isWithin(City);
LocationContext Building("City Hall").isWithin(City);
LocationContext River("Yellow River").isWithin(City);

City.has(Street);
Street.intersects(CrossStreet);

LocationContext myLocation("Person A").isBetween(Tree).and(Building).and(River);

ASSERT_THAT(myLocationIntersection.toString(), Eq("Intersection of Linden Street and Main Street Houston"));
ASSERT_THAT(myLocationBetween.toString(), Eq("Between Big Tree, City Hall, and Yellow River Houston"));
```
