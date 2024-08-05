import '../exercise1/rectangle.dart';
import '../exercise1/circle.dart';

void main(List<String> arguments) {
  //Excercise 1
  print("* " * 5);
  print("Welcom to my calculator");
  print("* " * 5);
  print("*****Circle*****");
  Circle c1 = Circle(radius: 5);
  Circle c2 = Circle.noAttribute();
  c1.getArea();
  c1.getPermiter();

  print("The Radius of c2 is ${c2.getRadius}");
}
