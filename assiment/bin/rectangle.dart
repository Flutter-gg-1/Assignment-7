import 'exercise1.dart';

class Rectangle extends Shape {
  late double _length;
  late double _width;
  Rectangle(this._length, this._width);
  Rectangle.noAttribute() {
    _length = 3;
    _width = 3;
  }
  @override
  void getArea() {
    double area = _length * _width;
    print("Rectangle area is: $area");
  }

  @override
  void getPerimeter() {
    double perimeter = 2 * (_length + _width);
    print("Rectangle perimeter is: ${perimeter.toStringAsFixed(1)}");
  }

  double get lenght {
    return _length;
  }

  double get width {
    return _width;
  }

  set length(double length) {
    _length = length;
  }

  set width(double width) {
    _width = width;
  }
}
