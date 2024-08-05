// Create 2 objects of the Circle class named c1 and c2:
// c1 with a radius of 5.
// c2 using the named constructor without a radius parameter.
// Execute getArea() using c1.
// Execute getPerimeter() using c1.
// Print the radius of c2.
// Create an object of the Rectangle class named r1 with a length of 3 and a width of 5.
// Execute getArea() using r1.
// Modify either the length or width (but not both) to make the perimeter equal to 22.
// Execute getPerimeter() using r1.

import 'exercise1.dart';

void main() {
  Circle c1 = Circle(5);
  Circle c2 = Circle.noAttribute();

  c1.getArea();
  c1.getPerimeter();

  print("The radius of c2 is: ${c2.radius}");

  Rectangle r1 = Rectangle(3, 5);
  r1.getArea();
  r1.length = 4;
  r1.getArea();
}
