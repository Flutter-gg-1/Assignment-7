class Person {
  String? name;
  String? email;

  Person({required this.name, required this.email});
}

class Author extends Person {
  static int idCounter = 1;
  int? id;
  Author({required super.name, required super.email}) {
    id = idCounter;
    idCounter++;
  }
}

class Book {
  String? name;
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
  Customer({required super.name, required super.email});
  List<Book> bookList = [];

  addBook(Book book) {
    bookList.add(book);
  }

  printInformation() {
    print("\n##########info##########");
    print("Customer name: $name");
    print("Customer email: $email");
    print("----------Customers books: ----------");
    for (var book in bookList) {
      print("Book name: ${book.name}");
      print("Book ISPN: ${book.isbn}");
      print("Book edition number: ${book.editionNumber}");
      print(
          "Book author: ${book.author?.name}, email: ${book.author?.email}\n\n");
    }
  }
}
