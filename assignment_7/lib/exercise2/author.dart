import 'package:assignment_7/exercise2/person.dart';
/*
*
* Author class inherent from Person
*
* */

class Author extends Person {
  static int _idCounter = 1;
  int id;

  // Constructor
  Author(super.name, super.email) : id = _idCounter++;

}