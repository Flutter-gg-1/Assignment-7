import 'exercise1.dart';

class Circle extends Shape {
  late double _radius; //privet attrbute
  static const double pi = 3.1415926535897932; //static attrbute

  Circle(this._radius); //constracter

  Circle.noAttribute() {
    //named constracter
    _radius = 2;
  }

  @override
  void getArea() {
    //mthod getting area by Multiply the pi in radius
    double area = pi * _radius * _radius;
    print("circle area is: ${area.toStringAsFixed(1)}");
  }

  @override
  void getPerimeter() {
    //mthod getting area by 2  Multiply the pi in radius
    var perimeter = 2 * pi * _radius;
    print("Circle perimeter is: ${perimeter.toStringAsFixed(1)}");
  }

  double get raduis {
    return _radius; //getter
  }

  set radius(double radius) {
    _radius = radius; //setter
  }
}
