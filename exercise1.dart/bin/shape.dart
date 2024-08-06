
import 'dart:math';

// Abstract class
abstract class Shape {
  void getArea();
  void getPerimeter();
}

// Circle class
class Circle extends Shape {
  static const double PI = pi;
  double _radius;
// Circle con
  Circle(this._radius);

  Circle.noAttribute() : _radius = 2;

  double get radius => _radius;
  set radius(double radius) {
    if (radius > 0) {
      _radius = radius;
    } else {
      throw Exception('Radius must be positive');
    }
  }

  @override
  void getArea() {
    double area = PI * _radius * _radius;
    print('Circle area is: $area');
  }

  @override
  void getPerimeter() {
    double perimeter = 2 * PI * _radius;
    print('Circle perimeter is: $perimeter');
  }
}

// Rectangle class
class Rectangle extends Shape {
  double _length;
  double _width;

  Rectangle(this._length, this._width);

  Rectangle.noAttribute()
      : _length = 3,
        _width = 3;

  double get length => _length;
  set length(double length) {
    if (length > 0) {
      _length = length;
    } else {
      throw Exception('Length must be positive');
    }
  }

  double get width => _width;
  set width(double width) {
    if (width > 0) {
      _width = width;
    } else {
      throw Exception('Width must be positive');
    }
  }

  @override
  void getArea() {
    double area = _length * _width;
    print('Rectangle area is: $area');
  }

  @override
  void getPerimeter() {
    double perimeter = 2 * (_length + _width);
    print('Rectangle perimeter is: $perimeter');
  }
}