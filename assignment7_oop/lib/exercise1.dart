import 'dart:math'; // library used to get PI value.

abstract class Shape {
  void getArea();
  void getPerimeter();
}

class Circle extends Shape {
  num? _radius;
  static const PI = pi;

  // parameterized constructor
  Circle({required num? radius}) {
    _radius = radius;
  }

  // named constructor
  Circle.noAttribute() {
    _radius = 2;
  }

  set setRadius(num r) {
    _radius = r;
  }

  get getRadius {
    return _radius;
  }

  @override
  void getArea() {
    num area = pi * pow(_radius!, 2);
    print("circle area is: $area");
  }

  @override
  void getPerimeter() {
    num perimeter = 2 * pi * _radius!;
    print("circle perimeter is: $perimeter");
  }
}

class Rectangle extends Shape {
  num? _length;
  num? _width;

  // parameterized constructor
  Rectangle({num? length, num? width}) {
    _length = length;
    _width = width;
  }

  // named constructor
  Rectangle.noAttribute() {
    _length = 3;
    _width = 3;
  }

  set setLength(num length) {
    _length = length;
  }

  get getLength {
    return _length;
  }

  set setWidth(num width) {
    _width = width;
  }

  get getWidth {
    return _width;
  }

  @override
  void getArea() {
    num area = _width! * _length!;
    print("Rectangle area is: $area");
  }

  @override
  void getPerimeter() {
    num perimeter = (_length! + _width!) * 2;
    print("Rectangle perimeter is: $perimeter");
  }
}