import 'person.dart';

class Author extends Person {
  static int counter = 0;
  late int id = 0;

  Author({
    required super.name,
    required super.email,
  }) {
    counter++;
    id += counter;
  }

  void autherInfo() {
    print("Auther Information");
    print(name);
    print(email);
  }
}
