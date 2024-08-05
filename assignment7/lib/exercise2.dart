import 'colors.dart';

class Person {
  String? name;
  String? email;
  Person(this.name, this.email);
}
class Author extends Person{
  static int idCounter = 1;
  int? id;

  Author(super.email, super.name){
    id = idCounter++;
  }
}
class Book{
  String? name;
  int? ISBN; // (International Standard Book Number)
  String? editionNumber;
  Author author;
  Book({required this.ISBN,required this.author,required this.editionNumber,required this.name});
}
class Customer extends Person{
  List<Book> bookList = [];
  Customer(super.email, super.name);

  addBook(Book book){
    bookList.add(book);
  }

  void printInformation(){
    int count = 0;
    print('Customer Information:');
    print('Name: $name');
    print('Email: $email');
    print('Books Purchased:');
    for (var book in bookList){
      print('$yellowBG BOOK: ${++count} :$reset $green \nName: ${book.name} \nISBN: ${book.ISBN} \nEdition Number: ${book.editionNumber} \nAuthor: ${book.author.name} - ${book.author.email} $reset');
      print("-"*30);
    }
  }


}