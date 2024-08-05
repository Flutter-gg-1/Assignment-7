import 'exercise1.dart';
void main(List<String> arguments) {
 // exercise 1
 Circle c1 = Circle();
 Circle c2 = Circle.noAttribute();

 c1.setRadius = 5;

 c1.getArea();

 c1.getPerimeter();

 print(c2.getRadius); //radius = 2

 Rectangle r1 = Rectangle();

 r1.setLength = 3;
 r1.setWidth = 5;

 r1.getArea();

 r1.setWidth = 8;

 r1.getPerimeter(); //result = 22
}
