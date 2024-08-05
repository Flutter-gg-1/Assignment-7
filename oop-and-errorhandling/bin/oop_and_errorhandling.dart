import './exercise_1/circle.dart';
import './exercise_1/rectangle.dart';

void main(List<String> arguments) {
  Circle c1 = Circle(radius: 5);
  Circle c2 = Circle.noAttribute();

  c1.getArea();
  c1.getPerimeter();
  print('Radius of c2: ${c2.getRadius}');

  Rectangle r1 = Rectangle(length: 3, width: 5);
  r1.getArea();

  // To make Perimeter = 22
  r1.setLength = 6;
  r1.getPerimeter();

  
}
