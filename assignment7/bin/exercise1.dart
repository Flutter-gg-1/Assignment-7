import 'dart:js_interop';
import 'dart:math' as math;

abstract class Shape {
  void getArea();
  void getPerimeter();
}

class Circle extends Shape {
  double? _radius;
  static const double pi = math.pi;

  Circle({required double radius}) {
    _radius = radius;
  }
  Circle.noAttribute() {
    _radius = 2;
  }
  @override
  void getArea() {
    num? area;
    print("circle area is: $area");
  }

  @override
  void getPerimeter() {
    num? perimeter;
    print("circle perimeter is: $perimeter");
  }

  get getRadius {
    return _radius;
  }

  set setRadius(double radius) {
    _radius = radius;
  }
}

class Rectangle extends Shape {
  double? _length;
  double? _width;

  Rectangle({required double length}) {
    _length = length;
  }
  Rectangle.noAttribute() {
    _length = 3;
    _width = 3;
  }

  @override
  void getArea() {
    double? area;
    print("Rectangle area is: $area");
  }

  @override
  void getPerimeter() {
    double? perimeter;
    print("Rectangle perimeter is: $perimeter");
  }

  get getLength {
    return _length;
  }

  get getWidth {
    return _width;
  }

  set setLength(double length) {
    _length = length;
  }

  set setWidth(double width) {
    _width = width;
  }
}
