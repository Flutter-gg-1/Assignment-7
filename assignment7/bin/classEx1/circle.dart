import 'shape.dart';
import 'dart:math';

class Circle extends Shape {
  double? _radius;
  static const double PI = pi;

  Circle(this._radius);
  Circle.noAttribute() : _radius = 2;
  set setRadius(double radius) {
    _radius = radius;
  }

  get getRadius {
    _radius;
  }

  @override
  void getArea() {
    double? area;
    area = PI * _radius! * _radius!;
    print("Circle area is: $area");
    print("--------------------------------");
  }

  @override
  void getPerimeter() {
    double? perimeter;
    perimeter = 2 * PI * _radius!;
    print("Circle perimeter is: $perimeter");
    print("--------------------------------");
  }
}
