import 'exercise1.dart';
void main() {
  Circle c1=Circle(5);
  Circle c2=Circle.noAttribute();
  c1.getArea();
  c1.getPerimeter();
  print(c2.radius);

  Rectangle r1 =Rectangle(3, 5);
  r1.getArea();
  r1 =Rectangle(6, 5);
  r1.getPerimeter();
}
