import 'dart:math';
abstract class Shape {
  void getArea();
  void getPerimeter();
}

class Circle extends Shape {
  double? _radius;
  static const myPi = pi;

  Circle(this._radius);

  Circle.noAttribute() {
    _radius = 2;
  }

  @override
  void getArea() {
    double area = myPi * _radius! * _radius!;
    String formattedNumber = area.toStringAsFixed(2);
    print("circle  area is: $formattedNumber");
  }

  

  @override
  void getPerimeter() {
    double perimeter = 2 * myPi * _radius!;
    print("circle perimeter is: $perimeter");
  }

  get radius => _radius;
  setRadius(double value){
    _radius = value;
  }
}

class Rectangle extends Shape {
  double? _width;
  double? _length;

  Rectangle(this._length, this._width);

  Rectangle.noAttribute() {
    _length = 3;
    _width = 3;
  }

  @override
  void getArea() {
    double area = _length! * _width!;
    String formattedNumber = area.toStringAsFixed(2);

    print("Rectangle area is: $formattedNumber");
  }

  @override
  void getPerimeter() {
    double perimeter = 2 * (_length! + _width!);
    String formattedNumber = perimeter.toStringAsFixed(2);

    print("Rectangle perimeter is: $formattedNumber");
  }

  get width => _width;
  get length => _length;

  setLength(double value) {
    _length = value;
  }

  setWidth(double value) {
    _width = value;
  }
}

