import 'dart:convert';

import 'package:http/http.dart' as http;

main() async {
//  print(await getData(1));
//  print(await getData(2));
//  print(await getData(3));
//  print(await getData(4));
  Future.wait([
    getData(1),
    getData(2),
    Future.delayed(Duration(milliseconds: 1), () {
      print("Delayed function");
    }),
    getData(3),
    getData(4),
    getData(5),
  ]);
}

Future<String> getData(int id) async {
  var data = await http.get("https://jsonplaceholder.typicode.com/posts/$id");
  String title = json.decode(data.body)["title"];
  print("$id: $title");
  return "$id: $title";
}
