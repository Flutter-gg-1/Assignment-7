
import 'dart:math';

abstract class Shape{

  void getArea(){

  }
  
  void getPerimeter(){

  }

}

class Circle extends Shape{

  double radius;
  static const double PI= 3.1415926535897932;

  //parameterized constructor
  Circle(this.radius){}

  noAttribute(int radius){
    this.radius=2;
  }

  @override
   void getArea(){
    double area;
    area=PI*pow(radius,2);
    print("circle area is: $area");
  }

    @override
   void getPerimeter(){
    double perimeter;
    perimeter=2*PI*radius;
    print("circle perimeter is: $perimeter");
  }

}

class Rectangle extends Shape{

  double length;
  double width;

  //parameterized constructor
  Rectangle(this.length, this.width){}

  noAttribute(){
    length=3.0;
    width=3.0;
  }

  @override
   void getArea(){
    double area;
    area=length*width;
    print("Rectangle area is: $area");
  }

    @override
   void getPerimeter(){
    double perimeter;
    perimeter=2*(length+width);
    print("Rectangle perimeter is: $perimeter");
  }

}