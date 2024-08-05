import 'dart:math' as math;

//abstract class
abstract class Shape {
  //abstract methods
  void getArea();
  void getPerimeter();
}

class Circle extends Shape {
  //Attribute
  double? _radius;
  static const double pi = math.pi;

  //parameterized constractor
  Circle({required double radius}) {
    _radius = radius;
  }

  //named constractor
  Circle.noAttribute() {
    _radius = 2;
  }

  //overrided methods
  @override
  void getArea() {
    double? area = pi * math.pow(getRadius, 2);
    print("* circle area is: $area");
  }

  @override
  void getPerimeter() {
    double? perimeter = 2 * pi * getRadius;
    print("* Circle perimeter is: $perimeter");
  }

  //geter and seter for radius
  get getRadius {
    return _radius;
  }

  set setRadius(double radius) {
    _radius = radius;
  }
}

class Rectangle extends Shape {
  //Attribute
  double? _length;
  double? _width;
  //parameterized constractor
  Rectangle({required double length, required double width}) {
    _length = length;
    _width = width;
  }
  //named constractor
  Rectangle.noAttribute() {
    _length = 3;
    _width = 3;
  }
  //overrided methods
  @override
  void getArea() {
    double? area = getLength * getWidth;
    print("* Rectangle area is: $area");
  }

  @override
  void getPerimeter() {
    double? perimeter = (getLength + getWidth) * 2;
    print("* Rectangle perimeter is: $perimeter");
  }

  //geter and seter for length and width
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
