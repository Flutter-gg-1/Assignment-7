import "color_print.dart";
import 'dart:math' as math;

//Define an abstract class named Sharp.
abstract class Sharp {
  // Abstract method
  void getArea();
  void getPerimeter();
}

//Define a class named Circle that implements the Sharp interface.
class Circle extends Sharp {
  // Properties
  double? _radius;

  //Define PI as a constant using the Math library.
  static const double pi = math.pi;

  //A parameterized constructor that sets the radius.
  Circle(this._radius);

  //A named constructor that sets the radius to 2.
  Circle.noAttribute() {
    _radius = 2;
  }

  //Implement the getArea method.
  @override
  void getArea() {
    double area = pi * _radius! * _radius!;
    printInfo("circle area is: $area");
  }

  //Implement the getPerimeter method.
  @override
  void getPerimeter() {
    double perimeter = 2 * pi * _radius!;
    printInfo("circle perimeter is: $perimeter");
  }

  //A getter for the radius.
  double? get radius {
    return _radius;
  }

  //A setter for the radius.
  set radius(double? radius) {
    _radius = radius;
  }
}

//Define a class named Rectangle that implements the Sharp interface.
class Rectangle extends Sharp {
  // Properties
  double? _length, _width;

  //A parameterized constructor that sets the length and width.
  Rectangle(this._length, this._width);

  //A named constructor that sets the length and width to 3.
  Rectangle.noAttribute() {
    _length = 3;
    _width = 3;
  }

  @override
  void getArea() {
    double area = _length! * _width!;
    printInfo("Rectangle area is: $area");
  }

  @override
  void getPerimeter() {
    double perimeter = 2 * (_length! + _width!);
    printInfo("Rectangle perimeter is: $perimeter");
  }

  //A getter for the length.
  double? get length {
    return _length;
  }

  //A setter for the length.
  set length(double? length) {
    _length = length;
  }

  //A getter for the width.
  double? get width {
    return _width;
  }

  //A setter for the width.
  set width(double? width) {
    _width = width;
  }
}

void exerciseOne(List<dynamic> list) {
  printSuccess("\nShapes\n");
  // Circle objects
  Circle c1 = Circle(5);
  Circle c2 = Circle.noAttribute();

  //Execute the getArea method for the Circle objects.
  c1.getArea();
  c1.getPerimeter();

  //Print the radius of the Circle objects.
  printInfo("Circle 2 radius is: ${c2.radius}");

  // Rectangle objects
  Rectangle r1 = Rectangle(3, 5);

  //Execute the getArea method for the Rectangle objects.
  r1.getArea();

  //Print the width of the Rectangle object.
  r1.width = 8;
  r1.getPerimeter();
}
