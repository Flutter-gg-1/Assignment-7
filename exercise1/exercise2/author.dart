import 'person.dart';

class Author extends Person {
  int id = 1;

  Author({
    required super.name,
    required super.email,
  }) {
    id++;
  }
}
