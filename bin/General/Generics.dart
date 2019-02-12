main() {
  var test1 = Map<String, int>();

  ///type errors
  test1["Raouf"] = 34; //fine
  //  test1["Raouf"] = "Name";//error

  // restrict types
  var test2 = Test<int>(); // fine
  //  var test2 = Test<String>();//error
}

//class TestString{
//  String item;
//  TestString(this.item);
//  String testGet()=>item;
//}
//class TestInt{
//  int item;
//  TestInt(this.item);
//  int testGet()=>item;
//}

// no more code duplication
class Test<T extends num> {
  T item;

  Test({this.item});

  T testGet() => item;
}
