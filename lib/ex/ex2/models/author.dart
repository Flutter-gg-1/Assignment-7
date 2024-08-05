import 'package:asg7/ex/ex2/models/person.dart';

class Author extends Person {
  late int authId;
  static int idCounter = 1;
  Author({required super.name, required super.email}) {
    authId = idCounter;
    idCounter += 1;

  }
}
