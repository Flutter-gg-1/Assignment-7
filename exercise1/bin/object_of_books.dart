class Person {
  String? name;
  String? email;
  Person({required this.name,required this.email});
}

class Author extends Person {
  static int  id = 0;

  Author({required super.name,required super.email}) {
    id++;
  }

  void printAuthorInformation() {
    print('Name: $name');
    print('Email: $email');
  }

}

class Book {
  String? name;
  String? iISBN;
  int? editionNumber;
  Author? author;

  Book({required this.name,required  this.iISBN,required  this.editionNumber,required this.author});
}

class Customer extends Person {
  List<Book> books = [];

  Customer({required super.name,required super.email});

  void addBook(Book book) {
    books.add(book);
  }

  void printCustomerInformation() {
    print('Name: $name');
    print('Email: $email');
    print('Books: $books');
  }
}
