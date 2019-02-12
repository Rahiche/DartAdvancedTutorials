import 'dart:convert';

import 'package:http/http.dart' as http;

main() {
  Future.value(5).then((int value) {
    print(value);
  });

  Future.delayed(Duration(seconds: 5), () {
    print("data");
  });
}
