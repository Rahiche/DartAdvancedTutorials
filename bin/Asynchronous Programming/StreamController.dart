import 'dart:async';

main() {
  StreamController<String> data = StreamController.broadcast();

  data.sink.add("Hello");
  data.sink.add("Hi!");

  data.stream.listen((String text) {
    print(text);
  });

  data.stream.listen((String text) {
    print(text);
  });

  data.sink.add('Yes?');
}
