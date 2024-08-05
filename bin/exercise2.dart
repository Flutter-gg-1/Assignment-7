class Person{

  String? name;
  String? email;

  Person(this.name, this.email);
}

class Author extends Person{
static int id=1;

Author(super.name, super.email){
id++;
}

}

class Book{

  String? name;
  String? iSBN;
  int? editionNumber;
  Author? author;

  Book(this.author, this.editionNumber, this.iSBN ,this.name);

}

class Customer extends Person{

  Customer(super.name, super.email);

  List<Book> bookList = [];

  addBook(Book book){
    bookList.add(book);
  }

  printInformation(){
    print("---Personal Information---");
    print("Name: $name");
    print("Email:$email");
    print("---Book Information---");

    for (Book book in bookList){
      print("Book name: ${book.name}");
      print("ISBN: ${book.iSBN}");
      print("Book name: ${book.editionNumber}");
      print("ISBN: ${book.author}");
      print("-------------------");

    }

  }
}