






import 'dart:math' as math;

import 'package:asg7/ex/ex1/models/shape.dart';

class Circle extends Shape{

  late num _radius;
  static const  double  pi = math.pi;

   Circle({required num radius}){

    _radius = radius;

   }

   Circle.noAttribute(){
    _radius = 2;
   }




  @override
  void getArea() {
    double area = pi*math.pow(2, 2)   ;

    print("circle area is: $area");
  }

  @override
  void getPerimeter() {
    double perimeter = 2*pi*_radius  ;
    print("circle perimeter is: $perimeter");

  }


  get getRadius{
    return _radius;
  }

  set setRadius(double rad){
    _radius = rad;

  }

  
}