import 'exercise2.dart';

class Author extends Person {
  //extand from Person the
  static int id =
      0; //Static int to use it inside the the constracter to incremnt
  Author({required super.name, required super.email}) {
    //constracter extnded from person
    id += 1; //ID incremmnt when we use the constracter
  }
}
