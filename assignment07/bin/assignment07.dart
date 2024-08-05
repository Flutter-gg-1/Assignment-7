import './exercise1.dart';

void main() {
  // Circle objects
  Circle c1 = Circle(5);
  Circle c2 = Circle.noAttribute();

  //Execute the getArea method for the Circle objects.
  c1.getArea();
  c1.getPerimeter();

  //Print the radius of the Circle objects.
  print('Circle 2 radius is: ${c2.radius}');

  // Rectangle objects
  Rectangle r1 = Rectangle(3, 5);

  //Execute the getArea method for the Rectangle objects.
  r1.getArea();

  //Print the width of the Rectangle object.
  r1.width = 8;
  r1.getPerimeter();
}
