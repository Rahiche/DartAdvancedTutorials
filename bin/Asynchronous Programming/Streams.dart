import 'dart:async';

main() {
  var stream = Stream<int>.periodic(Duration(seconds: 2), (int i) => i);

  StreamSubscription<int> data;
  data = stream.listen((int item) {
    print(item);
    if (item >= 5) {
      data.cancel();
    }
  });
}
