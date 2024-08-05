import '../exercise1/rectangle.dart';
import '../exercise1/circle.dart';
import 'dart:io';

void exercise1() {
  late String userInput;
  do {
    print("1- Calculate circle -2  Calculate rectangle  0- exit");
    try {
      userInput = stdin.readLineSync()!;
    } catch (e) {
      print(e);
    }

    switch (userInput) {
      case == "1":
        calculateCircle();
        break;
      case == "2":
        calculateRectangle();
        break;
      
    }
  } while (userInput != "0");
}

void calculateRectangle() {
  print("Input length");
  late num length;
  try {
    length = num.parse(stdin.readLineSync()!);
  } catch (e) {
    print(e);
  }

  print("Input width");
  late num width;
  try {
    width = num.parse(stdin.readLineSync()!);
  } catch (e) {
    print(e);
  }

  Rectangle rectangle = Rectangle(length: length, width: width);
  rectangle.getArea();
  rectangle.getPermiter();
}

void calculateCircle() {
  print("input radius");
  late num radius;
  try {
    radius = num.parse(stdin.readLineSync()!);
    Circle circle = Circle(radius: radius);
    circle.getArea();
    circle.getPermiter();
  } catch (e) {
    print(e);
  }
}
