import 'exercise2.dart';
import 'book.dart';

class Customer extends Person {
  //extand from the Person calss
  List<Book> bookCus = []; // I difint list of the type of the book class
  Customer({required super.name, required super.email});

  addBook(Book book) {
    //here we adding books to the list
    bookCus.add(book);
  }

  printInformation() {
    print("Name: $name Email: $email"); //print the custmer info
    for (var element in bookCus) {
      print(
          "Book: ${element.name}, ISBN: ${element.isbn}, Edition: ${element.editionNumber}, Author: ${element.auther!.name}"); //print the book info with the auth name
    }
  }
}
