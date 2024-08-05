




import 'dart:ffi';

import 'package:asg7/ex/ex1/models/shape.dart';

class Rectangle extends Shape{


  late double _length;
  late double _width;

   Rectangle({required double len , required double wid}){

    _length = len;
    _width = wid;

   }

   Rectangle.Rectangle(){

    _length = 3;
    _width = 3;

   }


  @override
  void getArea() {
    double area = _length * _width   ;

    print("Rectangle area is: $area");
  }

  @override
  void getPerimeter() {
    double perimeter = (_length+_width)*2  ;
    print("Rectangle perimeter is: $perimeter");
  }



  set setlen(double len){
    _length = len;

  }

  get getLen{
    return _length;
  }


  get getWid{
    return _width;
  }



   set setwid(double wid){
    _width = wid;
    
  }

  

}