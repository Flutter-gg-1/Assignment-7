import 'dart:math' as math;

abstract class Shape {
  void getArea();
  void getPerimeter();
}

class Circle extends Shape {
  double? _radius;
  double pPI = math.pi;
  Circle(this._radius);
  Circle.noAttribute() : _radius = 2;
  @override
  void getArea() {
    num area = pPI * _radius! * _radius!;
    print('circle area is: $area');
  }

  @override
  void getPerimeter() {
    num perimeter = 2 * pPI * _radius!;
    print('circle perimeter is: $perimeter');
  }

  double get radius => _radius!;
  set radius(double value) {
    _radius = value;
  }
}

class Rectangle extends Shape {
  double? _length;
  double? _width;
  Rectangle(this._length, this._width);
  Rectangle.noAttribute()
      : _length = 3,
        _width = 3;
  @override
  void getArea() {
    num area = _length! * _width!;
    print('Rectangle area is: $area');
  }
  @override
  void getPerimeter() {
    num perimeter = 2 * (_length! + _width!);
    print('Rectangle perimeter is: $perimeter');
  }
  double get length => _length!;
  double get width => _width!;
  set length(double value) {
    _length = value;
  }
  set width(double value) {
    _width = value;
  }
}
