import 'dart:math';

abstract class Shape {
  void getArea();
  void getPerimeter();
}

class Circle extends Shape {
  double _radius;
  static const double piValue = pi;

  Circle(this._radius);

//named counstructor
  Circle.noAttribute() : _radius = 2;

  @override
  void getArea() {
    double area = _radius * piValue;
    print("\ncircle area is: ${area.toStringAsExponential(3)}");
  }

  @override
  void getPerimeter() {
    double perimeter = 2 * piValue * _radius;
    print("circle perimeter is: ${perimeter.toStringAsFixed(1)}");
  }

  // double getRadius() {
  //   return _radius;
  // }
  double get radius => _radius;

  setRadius(double radius) {
    _radius = radius;
  }
}

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
