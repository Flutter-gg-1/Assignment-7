import 'package:assign7oop/exercise1.dart';

void main() {
  Circle c1 = Circle(radius: 5);
  //named constructor
  Circle c2 = Circle.noAttribute();

  //
  c1.getArea();
  c1.getPerimeter();
  //
  print(c2.getRadius);

  //
  Rectangle r1 = Rectangle(length: 3, width: 5);
  r1.getArea();
  r1.setLength(6);
  //after modfiyng to make it 22
  r1.getPerimeter();
}
