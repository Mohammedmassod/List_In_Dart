import 'ListOperation.dart';

void main() {
  List<String> names = ["mohammed", "khalid", "ibraheem", "ali", "salem"];

  ListOperation listOperations = ListOperation(names);

  List<String> searchResult = listOperations.searchNames(startsWith: "a");
  listOperations.printReversed(searchResult);

  List<String> sorted = listOperations.sortedList();
  print(sorted);

  Map<String, int> lengths = listOperations.getLengths();
  print(lengths);

  int size = listOperations.checkSize();
  print(size);

  listOperations.insertElement(2, "ahmed");
  print(names);

  bool removed = listOperations.removeElement("ali");
  print(removed);
  print(names);

  listOperations.clearList(resetToDefault: true);
  print(names);

  listOperations.removeDuplicate();
  print(names);

  bool duplicatesExist = listOperations.hasDuplicates();
  print(duplicatesExist);
}
