import 'dart:io';
import 'all_file.dart';

void exercise1() {
  print('\n ________####### Exercise 1 #######________\n');
  print('Please enter a radius of a circle: ');
  double? yourRadius;
  try {
    yourRadius = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print('Wrong input, Exiting...');
    showPrompt();
  }
  Circle c1 = Circle(yourRadius);
  Circle c2 = Circle.noAttribute();
  c1.getArea();
  c1.getPerimeter();
  num c2r = c2.radius;
  print('c2 radius is: $c2r');
  //________________________________________________
  Rectangle r1 = Rectangle(6, 5);
  r1.getArea();
  r1.getPerimeter();
  showPrompt();
}
