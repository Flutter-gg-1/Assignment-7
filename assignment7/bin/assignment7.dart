import 'exercise1.dart';

void main(List<String> arguments) {
  Circle c1 = Circle(radius: 5);
  Circle c2 = Circle.noAttribute();
  c1.getArea();
  c1.getPerimeter();
  print(c2.getRadius);

  Rectangle r1 =Rectangle(length: 3,width: 5);
  r1.getArea();
  r1 =Rectangle(length: 3,width: 8);
  r1.getPerimeter();


}
