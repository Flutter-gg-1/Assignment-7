import '../classEx2/person.dart';

class Author extends Person {
  static int counter = 1;

  Author({super.name, super.email}) {
    counter++;
  }
}
