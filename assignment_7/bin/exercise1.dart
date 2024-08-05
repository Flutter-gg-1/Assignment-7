import 'package:assignment_7/exercise1/circle.dart';
import 'package:assignment_7/exercise1/rectangle.dart';

/*
*
* Main class of the first exercise
* Here we will handel every thing in the assignment
*
* */
class Exercise1 {

  // Exercise main function
  static void main() {

    /*
    *
    * Circle Section
    *
    * */
    print('\n');
    print('*' * (1994 - 1969)); // 1969 first one landed on the Moon between
    print('Circle Section');
    print('*' * (1994 - 1969));

    // Create 2 objects of the Circle class named c1 and c2
    Circle c1 = Circle(radius: 5);
    Circle c2 = Circle.noAttribute();

    // Execute getArea() using c1.
    print('getArea for c1 = ${c1.getArea()}');

    // Execute getPerimeter() using c1.
    print('getPerimeter for c1 = ${c1.getPerimeter()}');

    // Print the radius of c2
    print('getRadius for c2 = ${c2.getRadius}');

    /*
    *
    * Rectangle Section
    *
    * */
    print('\n');
    print('*' * (1994 - 1969)); // 1969 first one landed on the Moon between
    print('Rectangle Section');
    print('*' * (1994 - 1969));

    // Create an object of the Rectangle class named r1 with a length of 3 and a width of 5.
    Rectangle r1 = Rectangle(length: 3, width: 5);

    // Execute getArea() using r1.
    print('getArea for r1 = ${r1.getArea()}');

    // Modify either the length or width (but not both) to make the perimeter equal to 22.
    // 2 * (length * width) = 22 ~===~> 2 * ( 4 * 2.75 ) = 22 😎
    r1.setLength = 4;
    r1.setWidth = 2.75;

    // Execute getPerimeter() using r1.
    print('getPerimeter for r1 = ${r1.getPerimeter()}');
  }
}
