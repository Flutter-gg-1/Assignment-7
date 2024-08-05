import 'exercise1.dart';

void main(List<String> arguments) {
  print("\n\n\n----------Exercise 1----------");
  Circle c1 = Circle(5);
  Circle c2 = Circle.noAttribute();

  c1.getArea();
  c1.getPerimeter();
  print(c2.getRadius);

  Rectangle r1 = Rectangle(length: 3.0, width: 5.0);
  r1.getArea();
  r1.setLength = 6.0;
  r1.getPerimeter();
  print("-------end of Exercise 1-------");
}
