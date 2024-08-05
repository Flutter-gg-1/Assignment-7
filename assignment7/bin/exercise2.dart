class Person {
  //Attributes
  String? name;
  String? email;

  //constractor
  Person({required this.name, required this.email});
}

class Author extends Person {
  //static attribute
  static int count = 1;
  int? id;

  //constractor
  Author({required super.name, required super.email}) {
    id = count++;
  }
}

class Book {
  //Attributes
  String? name;
  String? isbn;
  int? editionNumber;
  Author author;

  //constractor
  Book(
      {required this.name,
      required this.isbn,
      required this.editionNumber,
      required this.author});
}

class Customer extends Person {
  //constractor
  Customer({required super.name, required super.email});

  //List
  List<Book> bookList = [];

  //method
  addBook({required Book book}) {
    bookList.add(book);
  }

  //method
  printInformation() {
    print("\n************* Customer information *************\n");
    print(" * Customer name is: $name \n * Customer email is: $email");
    print("\n****** Book information ************\n");
    for (var element in bookList) {
      print("* Book name is ${element.name}");
      print("* Book ISBN is ${element.isbn}");
      print("* Book edition number is ${element.editionNumber}");
      print("* Book author name is ${element.author.name}");
      print("* Author email is ${element.author.email}");
      print("* Author ID is ${element.author.id}");
      print("/n************************************************");
    }
  }
}
