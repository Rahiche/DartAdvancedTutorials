main() async {
  var stream = generate(5);

  stream.listen((int data) {
    print(data);
  });
  print("done");

//  await for (int i in stream) {
//    print(i);
//  }
//  print("done");
}

Stream<int> generate(int to) async* {
  for (int i = 0; i <= to; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
