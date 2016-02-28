# Locations
  Locations (physical/logical) are described by a graph. By their very nature locations need a context which acts like a base (i.e. "Earth"). From this context, the location is focused with additional contexts (i.e. "USA", "TX", "77022", "North Houston Rosslyn Rd", "122221"). At any time the focusing of the context can stop, and this is still a valid location.
# Scope
  The methods for focusing the context may change based on the sub context. In the USA addresses are given by a street and a street number, in contrast in Japan they are given by a block and a block number. The location objects need to be accepting to this difference.
  Additionally, some places can only be described by relating multiple sub-context. An simple example of this would be a street corner. In some parts of Africa, locations are given based on landmarks since a traditional street style form of context cannot be made.
# Out of scope
  The location class will not validate locations. It will allow the user to enter any string of contexts in any order. I am expecting I will need to change this in the future, but for now I am assuming the user will always enter the context from largest to smallest, but again the system has no idea which context is larger.
# User cases
## Contexting a traditional US style address
```c++
LocationContext Country("USA");
LocationContext State("TX");
LocationContext City("Houston");
LocationContext ZipCode("77022");
LocationContext Street("Linden Street");
LocationContext Number("13");
LocationContext Unit("2B");

Country.refineTo(State).refineTo(City).refineTo(ZipCode).refineTo(Street).refineTo(Number).refineTo(Unit);
```

## Contexting with a non-terminal address (i.e. down to a zip code)
## Contexting a traditional Japanese style address
## Contexting by combining two contexts
## Contexting by landmarks
