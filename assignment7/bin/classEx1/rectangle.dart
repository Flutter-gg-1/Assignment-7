import 'shape.dart';

class Rectangle extends Shape {
  double? _lengthShape;
  double? _widthShape;

  Rectangle(this._lengthShape, this._widthShape);
  Rectangle.noAttribute()
      : _lengthShape = 4,
        _widthShape = 4;

  set setLengthShape(double lengthShape) {
    _lengthShape = lengthShape;
  }

  set setWidthShape(double widthShape) {
    _widthShape = widthShape;
  }

  get getLengthShape {
    _lengthShape;
  }

  get getWidthShape {
    _widthShape;
  }

  @override
  void getArea() {
    double? area;
    area = _lengthShape! * _widthShape!;
    print("Rectangle area is: $area");
    print("--------------------------------");
  }

  @override
  void getPerimeter() {
    double? perimeter;
    perimeter = 2 * (_lengthShape! + _widthShape!);
    print("Rectangle perimeter is: $perimeter");
    print("--------------------------------");
  }
}
