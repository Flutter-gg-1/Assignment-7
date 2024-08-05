import 'circle.dart';
import 'rectangle.dart';

void main(List<String> arguments) {
  Circle c1 = Circle(5);
  Circle c2 = Circle.noAttribute();
  c1.getArea();
  c1.getPerimeter();
  print("Radius of c2: ${c2.raduis}");
  Rectangle r1 = Rectangle(3, 5);
  r1.getArea();
  r1.width = 8;
  r1.getPerimeter();
}
