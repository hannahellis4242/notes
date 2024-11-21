# Test Driven Development

[up](../README.md)

## Focusing Questions

### When thinking about your test

- What am I afraid/uncertain of in the current code?

### When refactoring

- If renaming variables:
  - does the variable have a meaning within the domain? For Example

``` java
public class PaginationHelper<I> {
  List<I> collection;
  int itemsPerPage;
  public PaginationHelper(List<I> collection, int itemsPerPage) {
    this.collection=collection;
    this.itemsPerPage=itemsPerPage;
  }
  public int pageCount() {
    var numberOfFullPages = collection.size()/itemsPerPage;
    var numberOfPartPages = collection.size()%itemsPerPage == 0 ? 0 : 1;
    return numberOfFullPages + numberOfPartPages;
  }
}
```
