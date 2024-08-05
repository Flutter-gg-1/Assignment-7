import 'exercise1.dart';
import 'dart:math' as math;

class Circle extends Shape {
  double _radius;
  static const double pi = math.pi;

  Circle({required double radius}) : _radius = radius;

  Circle.noAttribute() : _radius = 2;

  @override
  void getArea() {
    double area = pi * math.pow(_radius, 2);
    print('Circle area is $area');
  }

  @override
  void getPerimeter() {
    double perimeter = 2 * pi * _radius;
    print('Circle perimeter is $perimeter');
  }

  get getRadius {
    return _radius;
  }

  set setRadius(double radius){
    _radius = radius;
  }
}