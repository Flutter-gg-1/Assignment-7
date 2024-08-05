import 'exercise1.dart';

void main(List<String> arguments) {
//Create 2 objects of the Circle class named c1 and c2
  Circle c1 = Circle(radius: 5);
  Circle c2 = Circle.noAttribute();

//Create an object of the Rectangle class named r1.
  Rectangle r1 = Rectangle(length: 3, width: 5);

//Execute getArea() and getPerimeter() using c1.
  c1.getArea();
  c1.getPerimeter();

//Print the radius of c2.
  print(c2.getRadius);

//Execute getArea() using r1
  r1.getArea();

//Modify the length or to make the perimeter equal to 22.Execute getPerimeter() using r1.
  r1.changeLength = 6;
  r1.getPerimeter();
}
