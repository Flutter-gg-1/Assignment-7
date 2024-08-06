
class Person {
  String name;
  String email;

  Person(this.name, this.email);
}

class Author extends Person {
  static int _Counter = 1;
  int id;

  Author(String name, String email)
      : id = AllpresonId(),
        super(name, email);

  static int AllpresonId() {
    return _Counter++;
  }
}

class Book {
  String name;
  String isbn;
  int edition;
  Author author;

  Book(this.name, this.isbn, this.edition, this.author);
}

class Customer extends Person {
  List<Book> bookList = [];

  Customer(String name, String email) : super(name, email);

  void addBook(Book book) {
    bookList.add(book);
  }

  void printInformation() {
    print('Customer Name: $name');
    print('Customer Email: $email');
    for (Book book in bookList) {
      print('Book Name: ${book.name}');
      print('Book ISBN: ${book.isbn}');
      print('Book Edition: ${book.edition}');
      print('Author: ${book.author.name}, Author ID: ${book.author.id}');
    }
  }
}

