import 'dart:math';

// Abstract class
abstract class Shape {
  void getArea();
  void getPerimeter();
}

// Circle class
class Circle extends Shape {
  // attributes
  double _radius;
  static const double PI = pi;
  // parameterized constructor
  Circle(this._radius);
  // named constructor
  Circle.noAttribute([this._radius = 2.0]);
  // override getArea method
  @override
  void getArea() {
    double area = pi * _radius * _radius;
    print("\ncircle area is: ${area.toStringAsFixed(2)}");
  }

  // override getPerimete method
  @override
  void getPerimeter() {
    double perimeter = 2 * pi * _radius;
    print("circle perimeter is: ${perimeter.toStringAsFixed(2)}");
  }

  // getter and setter methode
  double get getRadius {
    return _radius;
  }

  set updateRadius(double radius) {
    _radius = radius;
  }
}

// Rectangle class
class Rectangle extends Shape {
  // attribute
  double _length;
  double _width;

  // parameterized constructor
  Rectangle(this._length, this._width);
  // named constructor
  Rectangle.noAttribute([this._length = 3, this._width = 3]);
  @override
  void getArea() {
    double area = _length * _width;
    print("\nRectangle area is: ${area.toStringAsFixed(1)}");
  }

  @override
  void getPerimeter() {
    double perimeter = (_length + _width) * 2;
    print("Rectangle perimeter is: ${perimeter.toStringAsFixed(1)}");
  }

  // getter and setter methode
  double get getlength {
    return _length;
  }

  set updateLength(double length) {
    _length = length;
  }

  double get getwidth {
    return _width;
  }

  set updateWidth(double width) {
    _width = width;
  }
}
