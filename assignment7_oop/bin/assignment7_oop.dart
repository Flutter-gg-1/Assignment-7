// imports
import 'dart:io';
import 'package:assignment7_oop/exercise1.dart'; // exercise 1 file

void main() {
  print('====(> Exercise 1 <)====');
  // Create 2 objects of the Circle class named c1 and c2:
  // c1 with a radius of 5.
  // c2 using the named constructor without a radius parameter.
  Circle c1 = Circle(radius: 5);
  Circle c2 = Circle.noAttribute();

  // Execute getArea() using c1.
  c1.getArea();
  // Execute getPerimeter() using c1.
  c1.getPerimeter();
  // Print the radius of c2.
  print(c2.getRadius);
  // Create an object of the Rectangle class named r1 with a length of 3 and a width of 5.
  Rectangle r1 = Rectangle(length: 3, width: 5);
  // Execute getArea() using r1.
  r1.getArea();
  // Modify either the length or width (but not both) to make the perimeter equal to 22.
  r1.setLength = 6;
  // Execute getPerimeter() using r1.
  r1.getPerimeter();

  // error handling
  stdout.write("Enter radius : ");
  String? userRadius = stdin.readLineSync();
  try {
    c1.setRadius = int.parse(userRadius!);
  }
  on FormatException {
    print("ERROR : Non Numeric Values are Not Allowed");
  }
  catch (error) {
    print("ERROR : $error");
  }

  try {
    r1.setLength = 10 ~/ 0;
  }
  on UnsupportedError {
    print("ERROR : Division By Zero is Not Allowed.");
  }
  catch (error) {
    print("ERROR : $error");
  }

  print(c1.getRadius); // 5 if error, otherwise it is userRadius
  print(r1.getLength); // 6

  print('--'*20);

  print('====(> Exercise 2 <)====');

}
