import 'dart:io';
import 'dart:isolate';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: FloatingActionButton(onPressed: () async {
            String data = await compute(blockApp, 5);
            print(data);
          }),
        ),
      ),
    );
  }
}

String blockApp(int sec) {
  print("begin $sec");
  sleep(Duration(seconds: sec));
  print("end $sec");
  return "congrats";
}
