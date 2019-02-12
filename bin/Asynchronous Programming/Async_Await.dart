import 'dart:convert';

import 'package:http/http.dart' as http;

main() async {
  print(await getData(1));
  print("test");
  print(await getData(2));
  print(await getData(3));
  print(await getData(4));
  print(await Future.value(5));
}

Future<String> getData(int id) async {
  try {
    var data = await http.get("https://jsonplaceholder.typicode.com/posts/$id");
    String title = json.decode(data.body)["title"];
    return title;
  } catch (e) {
    print(e);
  }
}
