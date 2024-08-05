// person class
class Person{
  String? name;
  String? email;
  Person({required this.name, required this.email});
}

// Author class
class Author extends Person{
  int id = 1;
  Author({required super.name, required super.email, required this.id}){
    id++;
  }
}


