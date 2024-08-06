import 'package:assignment_7/exercise2/person.dart';
import 'book.dart';

/*
*
* Customer class
*
* */
class Customer extends Person {
  List<Book> bookList = [];

  // Constructor
  Customer(super.name, super.email);

  // Method to add book
  void addBook(Book book) {
    bookList.add(book);
  }

  // Print customer information
  void printInformation() {
    print('Customer: $name, Email: $email');
    if (bookList.isEmpty) {
      print('No books purchased.');
    } else {
      print('Books purchased:');
      for (var book in bookList) {
        print(book);
      }
    }
  }
}