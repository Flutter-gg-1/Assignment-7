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
    double? area = pi * math.pow(getRadius, 2);
    print("circle area is: $area");
  }

  @override
  void getPerimeter() {
    double? perimeter = 2 * pi * getRadius;
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

  Rectangle({required double length, required double width}) {
    _length = length;
    _width = width;
  }
  Rectangle.noAttribute() {
    _length = 3;
    _width = 3;
  }

  @override
  void getArea() {
    double? area = getLength * getWidth;
    print("Rectangle area is: $area");
  }

  @override
  void getPerimeter() {
    double? perimeter= (getLength + getWidth) * 2;
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
