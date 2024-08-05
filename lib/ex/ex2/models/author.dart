





import 'package:asg7/ex/ex2/models/person.dart';

class Author extends Person{


  static int id = 1;
  Author({required super.name, required super.email}){

    id += 1;
  }

}