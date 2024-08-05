import 'exercise1.dart';

class Rectangle extends Shape {
  late double
      _length; //i difined the lingth here as late becuse it will take the value after diefiend and it's privet
  late double
      _width; //i difined the wdth here as late becuse it will take the value after diefiend and it's privet
  Rectangle(this._length, this._width);
  Rectangle.noAttribute() {
    _length = 3; //here we gave the value for each attrbute
    _width = 3;
  }
  @override
  void getArea() {
    //method to calculate the area by Multiply the length in width
    double area = _length * _width;
    print("Rectangle area is: $area");
  }

  @override
  void getPerimeter() {
    double perimeter = 2 *
        (_length +
            _width); //method to calculate the perimeter by squer2 Multiply the length in width
    print(
        "Rectangle perimeter is: ${perimeter.toStringAsFixed(1)}"); //i used this functon to make the code orgniz
  }

  double get lenght {
    return _length; //getter for length
  }

  double get width {
    return _width; //getter for _width
  }

  set length(double length) {
    _length = length; //setter for length
  }

  set width(double width) {
    _width = width; //setter for width
  }
}
