








import 'package:asg7/ex/ex2/models/author.dart';
import 'package:asg7/ex/ex2/models/book.dart';
import 'package:asg7/ex/ex2/models/customer.dart';

class Exercise2{



 void  runEx2(){

  Author author1 = Author(name: "author1", email: "author1@gmail.com");
  Author author2 = Author(name: "author2", email: "author2@gmail.com");
  Author author3 = Author(name: "author3", email: "author3@gmail.com");


  Book book1 = Book(name: "book1", isbn: "11ss", editionNumber: 1, author: author1);
  Book book2 = Book(name: "book2", isbn: "12ss", editionNumber: 2, author: author2);
  Book book3 = Book(name: "book3", isbn: "13ss", editionNumber: 3, author: author3);


  print(author1.authId);
  print(author2.authId);
  print(author3.authId);

  Customer customer1 = Customer(name: "ammar", email: "amaaa@gmail.com");

  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);


  customer1.printInformation();

 
  }




}