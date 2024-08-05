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
  double getArea() {
    // To fine area of circle (pi * r * r) ^_^
    double area = (pi * _radius! * _radius!);

    // Return the result
    return area;
  }

  @override
  double getPerimeter() {
    // Define a perimeter variable to store the result of the perimeter calculation.
    double perimeter = _radius! * 2 * pi;

    // Return the result
    return perimeter;
  }

  // Getter fun to return radius
  // double get getRadius => _radius!;
  double get getRadius => _radius ?? 0; // another solution :) without non-null assertion operator

  // Setter fun to update radius
  double setRadius(double radius) => _radius = radius;
}
