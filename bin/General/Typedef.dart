typedef int operation(int a, b);

main() {
  var calc = Calc(a: 4, b: 8, op: add);
}

int add(int a, b) {
  print("Result : ${a + b}");
  return a + b;
}

wrongAdd(String a, b, c) {
  print("Result : ${a + b}");
}

class Calc {
  int a, b;
  operation op;

  Calc({this.a, this.b, this.op}) {
    op(a, b);
  }
}
