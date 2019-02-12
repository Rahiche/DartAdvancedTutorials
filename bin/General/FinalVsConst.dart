main() {
  final String a = "A";
//  a = "B";
//  a = "C";
  const String d = "String";

  final List<String> data = ["A", "B", "C"];
  data.add("D");
  const List<String> testData = ["A", "B", "C"];
//  testData.add("D");
//  testData[1] = "A";

  var myList = List.unmodifiable(["A", "B"]);
  myList.add("Data");
}

class FinalTest {
  final String a;
  static const String b = "Test";

  FinalTest(this.a);
}
