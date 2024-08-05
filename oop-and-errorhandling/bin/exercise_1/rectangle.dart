import 'exercise1.dart';

class Rectangle extends Shape {
  double _length;
  double _width;

  Rectangle({required double length, required double width})
      : _length = length,
        _width = width;

  Rectangle.noAttribute()
      : _length = 3,
        _width = 3;

  @override
  void getArea() {
    double area = _length * _width;
    print('Rectangle area is $area');
  }

  @override
  void getPerimeter() {
    double perimeter = (_length + _width) * 2;
    print('Rectangle perimeter is $perimeter');
  }

  get getLength {
    return _length;
  }

  get getWidth {
    return _width;
  }

  set setLength(double length) {
    _length = length;
  }

  set setWidth(double width) {
    _width = width;
  }
}