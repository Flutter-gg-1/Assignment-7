import 'dart:math';

abstract class Shape {
  void getArea();
  void getPerimeter();
}

class Circle extends Shape {
  double? _radius;
  static const PI = pi;

  Circle(this._radius);

  Circle.noAttribute() {
    _radius = 2;
  }

  get getRadius => _radius;

  set setRadius(double radius) => _radius = radius;

  @override
  void getArea() {
    double area = PI * pow(_radius!, 2);
    print("circle area is: $area");
  }

  @override
  void getPerimeter() {
    double perimeter = 2 * _radius! * PI;
    print("circle perimeter is: $perimeter");
  }
}

class Rectangle extends Shape {
  double? _length;
  double? _width;

  Rectangle({required length, required width}) {
    _length = length;
    _width = width;
  }

  Rectangle.noAttribute() {
    _length = 3;
    _width = 3;
  }

  get getLength => _length;
  get getWidth => _width;

  set setLength(double length) => _length = length;
  set setWidthh(double width) => _width = width;

  @override
  void getArea() {
    double area = _length! * _width!;
    print("Rectangle area is: $area");
  }

  @override
  void getPerimeter() {
    double perimeter = 2 * (_length! + _width!);
    print("Rectangle perimeter is: $perimeter");
  }
}
