import 'dart:io';
import 'package:ansicolor/ansicolor.dart';

final AnsiPen greenPen = AnsiPen()..green();
final AnsiPen bluePen = AnsiPen()..blue();
final AnsiPen blackPen = AnsiPen()..black();
final AnsiPen grayPen = AnsiPen()..gray();
final AnsiPen yalowPen = AnsiPen()..yellow();
final AnsiPen magentapen = AnsiPen()..magenta();

// create abstract class
abstract class Shape {
  void getArea();

  void getPerimeter();
}
//
//class Circle
class Circle extends Shape {
  double _radius;
  static const double PI = 3.141592653589793;

  Circle({required double radius}) : _radius = radius;
//getter
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
    print('${bluePen('Circle area is:')} ${magentapen(area)}');
  }

  void getPerimeter() {
    double perimeter = 2 * PI * _radius;

    print('${bluePen('Circle perimeter is:')} ${magentapen(perimeter)}');
  }
}
//Rectangle class 
class Rectangle extends Shape {
  double _length;
  double _width;
  Rectangle.noAttribute()
      : _length = 3,
        _width = 3;

  Rectangle({required double length, required double width})
      : _length = length,
        _width = width;
// getter
  double getlength() {
    return _length;
  }

  // Setter
  double getwidt() {
    return _width;
  }

  set Setlength(double length) {
    _length = length;
  }

  set Setradius(double widt) {
    _width = widt;
  }
// override methods 
  @override
  void getArea() {
    double area = _length * _width;

    print('${bluePen('Rectangle area is:')} ${magentapen(area)}');
  }

  @override
  void getPerimeter() {
    double perimeter = 2 * (_length + _width);

    print('${bluePen('Rectangle perimeter is:')} ${magentapen(perimeter)}');
  }
}
//main
void main() {
  int? input;
  print(magentapen("..................................."));
             print("..............Welcome..............");
  print(magentapen("..................................."));
  print("please enter choose option :");
  print(" 1. ==> Circle");
  print("2. ==> Rectangle");
  try {
    input = int.parse(stdin.readLineSync()!);
    switch (input) {
      case 1:
        Circle c1 = Circle(radius: 5);
        Circle c2 = Circle.noAttribute();
        c1.getArea();
        c1.getPerimeter();
        c2.getradius();
 print(
            blackPen(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"));
        break;
      case 2:
        Rectangle r1 = Rectangle(length: 3, width: 5);
        r1.getArea();
        r1.Setlength = 6;
        r1.getPerimeter();
         print(
            blackPen(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"));
        break;
      default:
        print(yalowPen('Invalid choice. Please enter a number  1 ar 2.'));
        print(
            blackPen(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"));
    }
     //FormatException
  } on FormatException {
    print(yalowPen("......FormatException invalid Enttered......"));
    print(blackPen(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"));
  }
}
