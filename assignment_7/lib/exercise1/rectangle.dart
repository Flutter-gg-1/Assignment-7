import 'dart:math' as math;
import 'package:assignment_7/exercise1/shape.dart';

/*
*
* Rectangle inherent from Shape class
*
* */
class Rectangle extends Shape {
  // Define a private variable for length and width.
  double? _length, _width;

  // Define PI as a constant using the Math library
  // bad practice when name it PI https://dart.dev/effective-dart/style#prefer-using-lowercamelcase-for-constant-names
  static const double pi = math.pi;

  // A parameterized constructor.
  Rectangle({required double length, required double width}) {
    _length = length;
    _width = width;
  }

  // Named Constructor :)
  Rectangle.noAttribute() {
    // As order in the assignment, length and width a default value of 3
    _length = 3;
    _width = 3;
  }

  @override
  // Method to find area of rectangle
  double getArea() {
    // To find area of a rectangle = width * height
    double area = _length! * _width!;

    // return the result
    return area;
  }

  @override
  // Method to find the perimeter of a rectangle
  double getPerimeter() {
    // To find Perimeter of a rectangle 2 * (width + height)
    double perimeter = (2 * (_width! * _length!));

    // Return the result
    return perimeter;
  }

  // Get length
  get getLength => _length;

  // Set length
  set setLength(double length) => _length = length;

  // Get width
  get getWidths => _width;

  // Set radius
  set setWidth(double width) => _width = width;
}
