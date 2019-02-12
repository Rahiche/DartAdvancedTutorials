import 'dart:io';

main() {
  print("Write R/S/C : ");
  var input = stdin.readLineSync();
//  Shape shape = ShapeFactory().getShape(input);
  Shape shape = Shape(input);
//  if (input == "R") {
//    shape = Rectangle();
//  } else if (input == "C") {
//    shape = Circle();
//  } else if (input == "S") {
//    shape = Square();
//  }
  print(shape.draw());
}

// Java style
//class ShapeFactory {
//  Shape getShape(String input) {
//    if (input == "R") {
//      return Rectangle();
//    } else if (input == "C") {
//      return Circle();
//    } else if (input == "S") {
//      return Square();
//    } else {
//      return Rectangle();
//    }
//  }
//}

abstract class Shape {
  String draw();

  factory Shape(String input) {
    if (input == "R") {
      return Rectangle();
    } else if (input == "C") {
      return Circle();
    } else if (input == "S") {
      return Square();
    } else {
      return Rectangle();
    }
  }
}

class Rectangle implements Shape {
  @override
  String draw() {
    return "draw Rectangle";
  }
}

class Square implements Shape {

  @override
  String draw() {
    return "draw Square";
  }
}

class Circle implements Shape {
  double rad;
  @override
  String draw() {
    return "draw Circle";
  }
}
