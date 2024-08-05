import 'dart:ffi';
import 'dart:math';
import 'dart:io';

abstract class Shape {
  void getArea();

  void getPerimeter();
}

class Circle extends Shape {
  double _radius;
  static const double PI = 3.141592653589793;

  Circle({required double radius}) : _radius = radius;

  double getradius() {
    return _radius;
  }

  // Setter
  void Setradius(double radius) {
    _radius = radius;
  }

  Circle.noAttribute() : _radius = 2;

  @override
  void getArea() {
    double area = PI * _radius * _radius;
    print('Circle area is: $area');
  }

  void getPerimeter() {
    double perimeter = 2 * PI * _radius;
    print('Circle perimeter is: $perimeter');
  }
}

class Rectangle extends Shape {
  double _length;
  double _width;
  Rectangle.noAttribute()
      : _length = 3,
        _width = 3;

  Rectangle({required double length, required double width})
      : _length = length,
        _width = width;
// getter and setter methods for length and width
  double getlength() {
    return _length;
  }

  double getwidt() {
    return _width;
  }

  set Setlength(double length) {
    _length = length;
  }

  set Setradius(double widt) {
    _width = widt;
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

void main() {
  int? input;
  print("please enter chose :");
  print(" 1 ==> Circle");
  print("2 ==> Rectangle");
  try {
    input = int.parse(stdin.readLineSync()!);
    switch (input) {
      case 1:
        Circle c1 = Circle(radius: 5);
        Circle c2 = Circle.noAttribute();
        c1.getArea();
        c1.getPerimeter();
        c2.getradius();

        break;
      case 2:
        Rectangle r1 = Rectangle(length: 3, width: 5);
        r1.getArea();
        r1.Setlength = 6;
        r1.getPerimeter();
        break;
      default:
        print("try agin!");
    }
  } on FormatException {
    print("invalid Enttered");
  }
}
