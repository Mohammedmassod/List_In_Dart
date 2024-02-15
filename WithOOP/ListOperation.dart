class ListOperation {
  List<String> list;

  ListOperation(this.list);

  // البحث عن الأسماء التي تبدأ بالحرف المحدد
  List<String> searchNames({required String startsWith}) {
    List<String> result = [];
    for (String name in list) {
      if (name.startsWith(startsWith)) {
        result.add(name);
      }
    }
    return result;
  }

  // طباعة القائمة بشكل معكوس
  void printReversed(List<String> list) {
    list = list.reversed.toList();
    for (String name in list) {
      print(name);
    }
  }

  // ترتيب القائمة بشكل أبجدي
  List<String> sortedList() {
    List<String> sorted = List.from(list);
    sorted.sort();
    return sorted;
  }

  // الحصول على طول كل عنصر في القائمة
  Map<String, int> getLengths() {
    Map<String, int> result = {};
    for (String name in list) {
      result[name] = name.length;
    }
    return result;
  }

  // التحقق من حجم القائمة
  int checkSize() {
    if (list.isEmpty) {
      return -1;
    } else {
      return list.length;
    }
  }

  // إضافة عنصر إلى القائمة في موضع محدد
  void insertElement(int index, String element) {
    list.insert(index, element);
  }

  // حذف عنصر من القائمة إذا كان موجودًا
  bool removeElement(String element) {
    if (list.contains(element)) {
      list.remove(element);
      return true;
    } else {
      return false;
    }
  }

  // تفريغ القائمة
  void clearList({bool resetToDefault = false}) {
    if (resetToDefault) {
      list.clear();
      list.addAll(["mohammed", "khalid", "ibraheem", "ali", "salem"]);
    } else {
      list.clear();
    }
  }

  // حذف العناصر المكررة من القائمة
  void removeDuplicate() {
    Set<String> uniqueSet = {};
    List<String> duplicates = [];
    for (String name in list) {
      if (!uniqueSet.add(name)) {
        duplicates.add(name);
      }
    }
    if (duplicates.isNotEmpty) {
      list.removeWhere((name) => duplicates.contains(name));
    }
  }

  bool hasDuplicates() {
    Set<String> uniqueSet = {};
    for (String name in list) {
      if (!uniqueSet.add(name)) {
        return true;
      }
    }
    return false;
  }
}
