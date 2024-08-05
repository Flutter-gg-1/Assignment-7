import 'dart:math' as math;
abstract class Shape {
  void getArea();
  void getPerimeter();
}


class Circle extends Shape {

 double _radius = 0;
 static const pi = math.pi;

  Circle();

  Circle.noAttribute():
  _radius =2;

 //setter and getter for private var radius
  get getRadius{return _radius;}

  set setRadius(double newRadius){_radius =newRadius;}

  @override
  void getArea() {
    double? area = pi* math.pow(_radius, 2);
    print("circle area is: $area");
  }

  @override
  void getPerimeter() {
    double? perimeter = 2*pi*_radius;
    print("circle perimeter is: $perimeter");
  }
  
}

class Rectangle extends Shape {
  double _length = 0 , _width = 0;

  Rectangle();

  Rectangle.noAttribute():
  _length = 3,
  _width = 3;
 //setter and getter for private var width
  get getWidth{return _width;}

  set setWidth(double newWidth){_width = newWidth;}
 //setter and getter for private var length
  get getLength{return _length;}

  set setLength(double newLength){_length = newLength;}

  @override
  void getArea() {
    double area = _length * _width;
    print("Rectangle area is: $area");
  }

  @override
  void getPerimeter() {
    double perimeter = (_width + _length) * 2;

    print("Rectangle perimeter is: $perimeter");
  }
  
}