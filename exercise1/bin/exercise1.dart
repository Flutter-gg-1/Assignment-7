import '../exercise1/rectangle.dart';
import '../exercise1/circle.dart';
import '../ui/calculater.dart';
import 'dart:io';

void main(List<String> arguments) {
  //Excercise 1
  print("* " * 12);
  print("Welcom to my calculator");
  print("* " * 12);
  print("*****Circle*****");
  Circle c1 = Circle(radius: 5);
  Circle c2 = Circle.noAttribute();
  c1.getArea();
  c1.getPermiter();

  print("The Radius of c2 is ${c2.getRadius}");

  print("*****Rectangle *****");

  Rectangle r1 = Rectangle(length: 3, width: 5);

  r1.getArea();
  r1.getPermiter();

  print("chage length to 6");
  r1.setLength = 6;
  r1.getPermiter();

  //end of Excercise 1

  //UI
  exercise1();
}
