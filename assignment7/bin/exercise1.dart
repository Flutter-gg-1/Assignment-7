// Create an abstract class called Shape with the following methods:
// void getArea();
// void getPerimeter();
import 'dart:math';

abstract class Shape {
  void getArea();
  void getPerimeter();
}

// Create a class Circle that extends Shape.--->
// Implement the methods from the abstract class.--->
// Define a private variable for radius.-->
// Define PI as a constant using the Math library.-->
// Implement two constructors:
// A parameterized constructor.
// A named constructor called noAttribute that assigns radius a default value of 2.
// In the getArea() method:
// Define an area variable to store the result of the area calculation.
// Print the area in the format: "circle area is: $area".
// In the getPerimeter() method:
// Define a perimeter variable to store the result of the perimeter calculation.
// Print the perimeter in the format: "circle perimeter is: $perimeter".
// Provide getter and setter methods for radius.

class Circle extends Shape {
  double _radius;
  static const double piValue = pi;

  Circle(this._radius);

//named counstructor
  Circle.noAttribute() : _radius = 2;

  @override
  void getArea() {
    double area = _radius * piValue;
    print("circle area is: $area");
  }

  @override
  void getPerimeter() {
    double perimeter = 2 * piValue * _radius;
    print("circle perimeter is: $perimeter");
  }

  // double getRadius() {
  //   return _radius;
  // }
double get radius => _radius;

  setRadius(double radius) {
    _radius = radius;
  }
}

// Create a class Rectangle that extends Shape.
// Implement the methods from the abstract class.
// Define private variables for length and width.
// Implement two constructors:
// A parameterized constructor.
// A named constructor called noAttribute that assigns length and width a default value of 3.
// In the getArea() method:
// Define an area variable to store the result of the area calculation.
// Print the area in the format: "Rectangle area is: $area".
// In the getPerimeter() method:
// Define a perimeter variable to store the result of the perimeter calculation.
// Print the perimeter in the format: "Rectangle perimeter is: $perimeter".
// Provide getter and setter methods for length and width.

class Rectangle extends Shape {
  double _length;
  double? _width;

  Rectangle(this._length, this._width);

  Rectangle.noAttribute() : _length = 3;

  @override
  void getArea() {
    double area = _length * _width!;
    print("Rectangle area is: $area");
  }

  @override
  void getPerimeter() {
    double perimeter = (_length + _width!) * 2;
    print("Rectangle perimeter is: $perimeter");
  }

  double getlength() {
    return _length;
  }
// double get length => _length;
double get width => _width!;
  // double getWidth() {
  //   return _width!;
  // }

  
    set length(double length) {
    _length = length;
  }

  set width(double width) {
    _width = width;
  }
}
