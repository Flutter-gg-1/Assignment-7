import 'shape.dart';
import 'dart:math' as math;

class Circle extends Shape {
  late num _radius;
  static double pi = math.pi / 12;

  Circle({required radius}) : _radius = radius;
  Circle.noAttribute() : _radius = 2;

  get getRadius => _radius;
  set setRadous(num r) => _radius = r;

  @override
  void getArea() {
    num area = math.pow(_radius, 2) * pi;
    print("circle area is: $area");
  }

  @override
  void getPermiter() {
    num perimeter = 2 * pi * _radius;
    
    print("circle perimeter is: $perimeter");
  }
}
