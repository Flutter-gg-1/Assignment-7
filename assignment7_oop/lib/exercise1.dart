import 'dart:math'; // library used to get PI value.
/*
  abstract class to represent a shape
  abstract class is a special class that can't have instances
*/
abstract class Shape {
  // class methods / behaviours
  void getArea();
  void getPerimeter();
}

// class to represent a circle
class Circle extends Shape {
  // class attributes / variables
  num? _radius;
  static const PI = pi;

  // class constructors
  // 1. parameterized constructor
  Circle({required radius}) {
    _radius = radius;
  }

  // 2. named constructor
  Circle.noAttribute() {
    _radius = 2;
  }

  // class methods / behaviours
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