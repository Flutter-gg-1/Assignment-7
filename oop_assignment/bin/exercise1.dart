import 'dart:math';

//-------Super class Shape----------
abstract class Shape {
  void getArea();

  void getPerimeter();
}

//-------Sub class Circle----------
class Circle extends Shape {
  double? _radius;
  static const pI = pi;

//parameterized constructor.
  Circle({required double radius}) {
    _radius = radius;
  }
//named constructor called noAttribute
  Circle.noAttribute() {
    _radius = 2;
  }

  @override
  void getArea() {
    double area;
    area = pI * _radius! * _radius!;
    print("circle area is: $area");
  }

  @override
  void getPerimeter() {
    double perimeter;
    perimeter = 2 * pI * _radius!;
    print("circle perimeter is: $perimeter");
  }

//Radius getter and setter method
  get getRadius {
    return _radius;
  }

  set changeRadius(double radius) {
    _radius = radius;
  }
}

//-------Sub class Rectangle----------
class Rectangle extends Shape {
  double? _length;
  double? _width;

//parameterized constructor.
  Rectangle({required double length, required double width}) {
    _length = length;
    _width = width;
  }

//named constructor called noAttribute
  Rectangle.noAttribute() {
    _length = 3;
    _width = 3;
  }

  @override
  void getArea() {
    double aera;
    aera = _length! * _width!;
    print("Rectangle area is: $aera");
  }

  @override
  void getPerimeter() {
    double perimeter;
    perimeter = 2 * (_length! + _width!);
    print("Rectangle perimeter is: $perimeter");
  }

//Length getter and setter method
  get getLength {
    return _length;
  }

  set changeLength(double length) {
    _length = length;
  }

//width getter and setter method
  get getWidth {
    return _width;
  }

  set changeWidth(double width) {
    _width = width;
  }
}
