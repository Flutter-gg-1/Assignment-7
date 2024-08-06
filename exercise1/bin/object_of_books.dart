class Person {
  String? name;
  String? email;
  Person({required this.name, required this.email});
}

class Author extends Person {
  static int id = 0;

  Author({required super.name, required super.email}) {
    id++;
  }
}

class Book {
  String? name;
  String? iISBN;
  int? editionNumber;
  Author? author;

  Book(
      {required this.name,
      required this.iISBN,
      required this.editionNumber,
      required this.author});
}

class Customer extends Person {
  List<Book> purchasedBooks = [];

  Customer({required super.name, required super.email});

  void addBook(Book book) {
    purchasedBooks.add(book);
  }

  void printCustomerInformation() {
    print('Name: $name');
    print('Email: $email');
    print('Books: ${purchasedBooks.first.name}');
    print('Authors: ${Author.id}');
  }
}
