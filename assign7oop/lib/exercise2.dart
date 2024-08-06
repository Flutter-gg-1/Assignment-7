class Person {
  String? name;
  String? email;

  Person({required this.name, required this.email});
}

//auther extends from person
class Author extends Person {
  int? idAuther;
  //if the object\author is created it will increments by one
  static int idCounter = 1;
  Author({required super.name, required super.email}) {
    //increments
    idAuther = idCounter++;
  }
}

class Book {
  String? name;
  //International Standard Book Number
  String? isbn;
  int? editionNumber;
  Author? author;

  Book(
      {required this.name,
      required this.isbn,
      required this.editionNumber,
      required this.author});
}

class Customer extends Person {
  List<Book> bookLists = [];
  Customer({required super.name, required super.email});

  addBook(Book book) {
    bookLists.add(book);
  }

  printInformation() {
    print('\n\n\n\n');
    print("-----" * 9);
    print("       &---> Purchase Information: <---&           ");
    print('Name: $name\nEmail: $email\n---------\nBooks:');
    for (var book in bookLists) {
      print(
          'Author: ${book.author?.name}\nID: ${book.author?.idAuther}\nBook: ${book.name}        ');
    }
    print("-----" * 9);
  }
}
