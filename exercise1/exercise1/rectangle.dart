import 'shape.dart';

class Rectangle extends Shape {
  late num _length;
  late num _width;

  Rectangle({required num length, required num width})
      : _length = length,
        _width = width;
  Rectangle.noAttribute()
      : _length = 3,
        _width = 3;

  get getLength => _length;
  set setLength(num l) => _length = l;

  get getWidth => _width;
  set setWidth(num w) => _width = w;

  @override
  void getArea() {
    num area = _length * _width;
    print("Rectangle area is: $area");
  }

  @override
  void getPermiter() {
    num perimeter = 2 * (_length + _width);
    print("Rectangle perimeter is: $perimeter");
  }
}
