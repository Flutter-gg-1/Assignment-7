import 'shape.dart';

void main() {
  Circle c1 = Circle(5);
  Circle c2 = Circle.noAttribute();
  c1.getArea();
  c1.getPerimeter();
  num c2r = c2.radius;
  print('c2 radius is: $c2r');
  //________________________________________________

  Rectangle r1 = Rectangle(6, 5);
  r1.getArea();
  r1.getPerimeter();
}
