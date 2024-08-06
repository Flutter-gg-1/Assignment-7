import 'dart:io';
import 'package:assign7oop/exercise2.dart';

void displayBookStorePannel() {
  //3 object
  Author author1 = Author(name: 'Fahad', email: "fahad@gmail.com");
  Author author2 = Author(name: 'Mjd', email: "mjd@gmail.com");
  Author author3 = Author(name: 'Anas', email: "Anas@gmail.com");

  //ID it will increment by 1 every auther register
  print('----' * 4);
  print('|Author 1 ID: ${author1.idAuther}|');
  print('|Author 2 ID: ${author2.idAuther}|');
  print('|Author 3 ID: ${author3.idAuther}|');
  print('----' * 4);
  //used class book and created 3 object
  Book book1 = Book(
      name: 'C#', isbn: '987-9-16-19723-0', editionNumber: 1, author: author1);
  Book book2 = Book(
      name: 'Flutter',
      isbn: '900-9-16-11113-0',
      editionNumber: 77,
      author: author2);
  Book book3 = Book(
      name: 'JavaScript',
      isbn: '931-9-16-6432-0',
      editionNumber: 6,
      author: author3);

  //taking Customer inputs
  print('Customer Name');
  Customer customer1;
  // error handling for user inputs
  try {
    String? customerName = stdin.readLineSync();
    print('Customer Email');
    String? customerEmail = stdin.readLineSync();
    customer1 = Customer(name: customerName, email: customerEmail);

    //add to the list book of those customer
    customer1.addBook(book1);
    customer1.addBook(book2);
    customer1.addBook(book3);
    //result the info
    customer1.printInformation();
  } catch (e) {
    print(e);
  }
}
