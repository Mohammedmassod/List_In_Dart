void main() {
  List<String> names = ["mohammed", "khalid", "ibraheem", "ali", "salem"];

  // البحث عن الأسماء التي تبدأ بالحرف المحدد
  List<String> searchNames(
      {required List<String> list, required String startsWith}) {
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
  List<String> sortedList(List<String> list) {
    list.sort();
    return list;
  }

  // الحصول على طول كل عنصر في القائمة
  Map<String, int> getLengths(List<String> list) {
    Map<String, int> result = {};
    for (String name in list) {
      result[name] = name.length;
    }
    return result;
  }

  // التحقق من حجم القائمة
  int checkSize(List<String> list) {
    if (list.isEmpty) {
      return -1;
    } else {
      return list.length;
    }
  }

  // إضافة عنصر إلى القائمة في موضع محدد
  void insertElement(List<String> list, int index, String element) {
    list.insert(index, element);
  }

  // حذف عنصر من القائمة إذا كان موجودًا
  bool removeElement(List<String> list, String element) {
    if (list.contains(element)) {
      list.remove(element);
      return true;
    } else {
      return false;
    }
  }

  // تفريغ القائمة
  void clearList(List<String> list, {bool resetToDefault = false}) {
    if (resetToDefault) {
      list.clear();
      list.addAll(["mohammed", "khalid", "ibraheem", "ali", "salem"]);
    } else {
      list.clear();
    }
  }

  // حذف العناصر المكررة من القائمة
  void removeDuplicate(List<String> list) {
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

  // التحقق من وجود عناصر مكررة في القائمة
  bool hasDuplicates(List<String> list) {
    Set<String> uniqueSet = {};
    for (String name in list) {
      if (!uniqueSet.add(name)) {
        return true;
      }
    }
    return false;
  }

  // البحث عن الأسماء التي تبدأ بحرف "a" وطباعتها بشكل معكوس
  List<String> searchResult = searchNames(list: names, startsWith: "a");
  printReversed(searchResult);

  // ترتيب القائمة بشكل أبجدي وطباعتها
  List<String> sorted = sortedList(names);
  print(sorted);

  // الحصول على طول كل عنصر في القائمة وطباعتها
  Map<String, int> lengths = getLengths(names);
  print(lengths);

  // التحقق من حجم القائمة وطباعة النتيجة
  int size = checkSize(names);
  print(size);

  // إضافة عنصر "ahmed" إلى القائمة في الموضع الثاني وطباعة القائمة
  insertElement(names, 2, "ahmed");
  print(names);

  // حذف العنصر "ali" من القائمة وطباعة النتيجة
  bool removed = removeElement(names, "ali");
  print(removed);
  print(names);

  // تفريغ القائمة وإعادة تعيينها إلى القيمة الافتراضية وطباعة القائمة
  clearList(names, resetToDefault: true);
  print(names);

  // حذف العناصر المكررة من القائمة وطباعة القائمة
  removeDuplicate(names);
  print(names);

  // التحقق من وجود عناصر مكررة في القائمة وطباعة النتيجة
  bool duplicatesExist = hasDuplicates(names);
  print(duplicatesExist);
}
