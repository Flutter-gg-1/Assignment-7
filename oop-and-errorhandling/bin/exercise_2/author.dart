import 'exercise2.dart';

class Author extends Person {
  static int id = 0;

  Author({required super.name, required super.email}) {
    id++;
  }

  getId(){
    return id;
  }
}
