




import 'package:asg7/ex/ex1/models/circle.dart';
import 'package:asg7/ex/ex1/models/rectangle.dart';

class Exercise1{



 void  runEx1(){

  Circle c1 = Circle(radius: 5);
  Circle c2 = Circle.noAttribute();

  c1.getArea();
  c1.getPerimeter();

  print("\n#########   c2 radius is ${c2.getRadius}    ##########");


  print("\n\n");
  print("-"*45);


  Rectangle r1 = Rectangle(len: 3, wid: 5);

  r1.getArea();

  r1.setwid = 8;


  r1.getPerimeter();

  }




}