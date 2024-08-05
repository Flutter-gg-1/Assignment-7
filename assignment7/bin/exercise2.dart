// person class

class Person{
  String? name;
  String? email;
  Person({required this.name, required this.email});
}

// Author class
class Author extends Person{
  static int counter = 1;
  int id;
  Author({required super.name, required super.email, required this.id}){
    id = counter++;
  }
}

// book class
class Book{
  String? name;
  String? isbn;
  int? aditionNumber;
  Author? author;

  Book({this.name, this.author, this.aditionNumber, this.isbn});

}

// customer class
class Customer extends Person{
  Customer({required super.name, required super.email});
  List<Book> bookList = [];

  addBook(Book book){
    bookList.add(book);
  }

  printInformation(){
    print("\nCustomer information: ");
    print("name: $name\nemail: $email");
    print("\nCustomer book list: ");
    for (var element in bookList) {
      print("------------------------------");
      print("Book name: ${element.name}");
      print("ISBN: ${element.isbn}");
      print("Edition number: ${element.aditionNumber}");
      print("Auther: ${element.author!.name}");
    }
  }
}


