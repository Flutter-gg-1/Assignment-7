import 'dart:math';

abstract class Shape {
  void getArea();
  void getPerimeter();
}

//Circle class
class Circle extends Shape {
  num? _radius;

  static const double mypi = pi;
  //constructor
  Circle({required num radius}) {
    _radius = radius;
  }
  //named constructors
  Circle.noAttribute() : _radius = 2;

  //getter
  get getRadius {
    return _radius;
  }

  //setter
  void setRadius(num radius) {
    _radius = radius;
  }

  //method from super to calculte area of Circle
  @override
  void getArea() {
    num area = pi * _radius! * _radius!;
    print('the result of Circle area is: $area');
  }

  //method from super to calculte perimeter of Circle
  @override
  void getPerimeter() {
    num perimeter = 2 * pi * _radius!;
    print('the result of Circle perimeter is: $perimeter');
  }
}

//Rectangle class
class Rectangle extends Shape {
  num? _length;
  num? _width;

  //constructor
  Rectangle({required num length, required num width}) {
    _length = length;
    _width = width;
  }
  //named constructor
  Rectangle.noAttribute() {
    _length = 3;
    _width = 3;
  }

  ////getter & setter for Length
  get getLength {
    return _length;
  }

  void setLength(num length) {
    _length = length;
  }

  ////getter & setter for Width
  get getWidth {
    return _width;
  }

  void setWidth(num width) {
    _width = width;
  }

  //methods from super to calculte area
  @override
  void getArea() {
    num area = _length! * _width!;
    print('the result of Rectangle area is: $area');
  }

  //methods from super to calculte perimeter
  @override
  void getPerimeter() {
    num perimeter = 2 * (_length! + _width!);
    print('the result of Rectangle perimeter is: $perimeter');
  }
}
