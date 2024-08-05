import 'dart:math';

// Abstract class
abstract class Shape {
  void getArea();
  void getPerimeter();
}

// Circle class
class Circle extends Shape {
  // attribute
  double _radius;
  static const double PI = pi;
  // parameterized constructor
  Circle(this._radius);
  // named constructor
  Circle.noAttribute([this._radius = 2.0]);
  // override getArea method
  @override
  void getArea() {
    double area = pi * _radius * _radius;
    print("circle area is: $area");
  }

  // override getPerimete method
  @override
  void getPerimeter() {
    double perimeter = 2 * pi * _radius;
    print("circle perimeter is: $perimeter");
  }

  // getter and setter methode
  double get getRadius {
    return _radius;
  }

  set updateRadius(double radius) {
    _radius = _radius;
  }
}
