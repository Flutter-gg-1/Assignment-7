import 'exercise1.dart';


class Circle extends Shape {
  late double _radius;
  static const double pi = 3.1415926535897932;

  Circle(this._radius);

  Circle.noAttribute() {
    _radius = 2;
  }

  @override
  void getArea() {
    double area = pi * _radius * _radius;
    print("circle area is: ${area.toStringAsFixed(1)}");
  }

  @override
  void getPerimeter() {
    var perimeter = 2 * pi * _radius;
    print("Circle perimeter is: ${perimeter.toStringAsFixed(1)}");
  }

  double get raduis {
    return _radius;
  }

  set radius(double radius) {
    _radius = radius;
  }
}
