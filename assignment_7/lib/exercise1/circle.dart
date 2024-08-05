import 'dart:math' as math;
import 'package:assignment_7/exercise1/shape.dart';

/*
*
* Circle inherent from Shape class
*
* */
class Circle extends Shape {
  // Define a private variable for radius
  double? _radius;

  // Define PI as a constant using the Math library
  // bad practice when name it PI https://dart.dev/effective-dart/style#prefer-using-lowercamelcase-for-constant-names
  static const double pi = math.pi;

  // A parameterized constructor.
  Circle({required double radius}) {
    _radius = radius;
  }

  // Named Constructor :)
  Circle.noAttribute() {
    // As order in the assignment, radius = 2
    _radius = 2;
  }

  @override
  void getArea() {
    // To fine area of circle (pi * r * r) ^_^
    double area = (pi * _radius! * _radius!);
    print("circle area is: $area");
  }

  @override
  void getPerimeter() {
    // TODO: implement getPerimeter
  }

  // Get radius
  get getRadius => _radius;

  // Set radius
  set setRadius(double radius) => _radius = radius;
}
