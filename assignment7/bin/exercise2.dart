class Person {
  String? name;
  String? email;
  Person({required this.name, required this.email});
}

class Author extends Person {
  static int id = 1;
  Author({required super.name, required super.email}) {
    id++;
  }
}

class Book {
  String? name;
  String? isbn;
  int? editionNumber;
  Author author;
  Book(
      {required this.name,
      required this.isbn,
      required this.editionNumber,
      required this.author});
}

class Customer extends Person {
  Customer({required super.name, required super.email});
  List<Book> bookList = [];

  addBook({required Book book}) {
    bookList.add(book);
  }

  printInformation() {
    print("************** Customer information **************");
    print("* Customer name is: $name \n Customer email is: $email");
    print("**************** Book information ****************");
    for (var element in bookList){
      print("Book name is ${element.name}");
      print("Book ISBN is ${element.isbn}");
      print("Book edition number is ${element.editionNumber}");
      print("Book author name is ${element.author.name}");
      print("Author email is ${element.author.email}");
      print("Book ID is ${Author.id}");
      print("************************************************");
    }



  }
}
