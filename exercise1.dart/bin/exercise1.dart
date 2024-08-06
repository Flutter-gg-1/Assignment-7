
import 'shape.dart';

void main() {
  // Circle objects
  Circle c1 = Circle(5);
  Circle c2 = Circle.noAttribute();

// Circle methods
  c1.getArea();
  c1.getPerimeter();
  print('Radius of c2: ${c2.radius}');

  // Rectangle object
  Rectangle r1 = Rectangle(3, 5);
  r1.getArea();
  r1.length = 6; // Modify length to make the perimeter 22
  r1.getPerimeter();
}
