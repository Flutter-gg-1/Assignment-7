class Person {
  String name = '';
  String email = '';
}

class Author extends Person {
  int id = 1;
  static int count = 1;

  Author({required String name, required String email}) {
    id = count;
    count += 1;
    super.name = name;
    super.email = email;
  }
}

class Book {
  String name;
  String isbn;
  int editionNumber;
  Author author;

  Book(this.name, this.isbn, this.editionNumber, this.author) {
    verifyISBN();
  }

  // Handle User Input
  void verifyISBN() {
    try {
      int.parse(isbn);
    } catch (_) {
      print('Entered ISBN is not a number');
    }
  }
}

class Customer extends Person {
  List<Book> bookList = [];

  Customer({required String name, required String email}) {
    super.name = name;
    super.email = email;
  }

  void addBook(Book book) => bookList.add(book);

  void printInformation() {
    print('\nCustomer | Name: $name, Email: $email');
    for (var book in bookList) {
      print('''
Book:
Name: ${book.name}, ISBN: ${book.isbn}, Edition: ${book.editionNumber}
Author:
ID: ${book.author.id}, Name: ${book.author.name}, Email: ${book.author.email}
''');
    }
  }
}
