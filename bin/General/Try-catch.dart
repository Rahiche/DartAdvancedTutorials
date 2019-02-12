main() {
  int a = 14;
  int b = 0;
  int result;

//  try {
//    result = a ~/ b;
//  } on IntegerDivisionByZeroException catch (e) {
//    print("You cant't divide by 0");
//  }
//
//  print("Works fine");

  try {
    testAge(-14);
  } on FormatException catch (e) {
    print("wrong Age");
  }

  

  print("Works fine");
}

void testAge(int age) {
  if (age < 0) {
    throw FormatException();
  } else {
    print("Fine ");
  }
}
