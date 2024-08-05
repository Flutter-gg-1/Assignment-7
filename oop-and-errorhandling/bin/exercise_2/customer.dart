import 'exercise2.dart';
import 'book.dart';

class Customer extends Person {
  List<Book> listOfBooks = [];

  Customer({required super.name, required super.email});

  addBook(Book book) {
    listOfBooks.add(book);
  }

  printInformation() {
    print('Customer Name: $name');
    print('Customer Email: $email\n');

    for (var book in listOfBooks) {
      print('Book Name: ${book.name}');
      print('Book ISBN: ${book.isbn}');
      print('Book Edition Number: ${book.editionNumber}');
      print('Author Name: ${book.author.name}');
      print('Author Email: ${book.author.email}\n');
    }
  }
}
