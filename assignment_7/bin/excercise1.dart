import 'dart:math' as math;

abstract class Shape {
  void getArea();
  void getPerimeter();
}

// MARK: - Circle Class
class Circle extends Shape {
  late double _radius;
  static const pi = math.pi;

  // Parameterized Constructor
  Circle({required double radius}) {
    _radius = radius;
  }

  // Named Constructor
  Circle.noAttribute() : _radius = 2;

  @override
  void getArea() {
    var area = pi * (_radius * _radius);
    print("circle area is: $area");
  }

  @override
  void getPerimeter() {
    var perimeter = 2 * pi * _radius;
    print("circle perimeter is: $perimeter");
  }

  // Getter & Setter
  double get getRadius => _radius;
  set setRadius(double newRadius) => _radius = newRadius;
}

// MARK: - Ractangele Class
class Rectangle extends Shape {
  late double _length;
  late double _width;

  // Parameterized Constructor
  Rectangle({required double length, required double width}) {
    _length = length;
    _width = width;
  }

  // Named Constructor
  Rectangle.noAttribute()
      : _length = 3,
        _width = 3;

  @override
  void getArea() {
    var area = _length * _width;
    print("Rectangle area is: $area");
  }

  @override
  void getPerimeter() {
    var perimeter = (_length * 2) + (_width * 2);
    print("Rectangle perimeter is: $perimeter");
  }

  // Length Getter & Setter
  double get getLength => _length;
  set setLength(double newLength) => _length = newLength;

  // Width Getter & Setter
  double get getWidth => _width;
  set setWidth(double newWidth) => _width = newWidth;
}
