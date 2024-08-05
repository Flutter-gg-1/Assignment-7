class Person {
  String? name;
  String? email;

  Person({required this.name, this.email});
}

class Author extends Person {
  static int id = 0;
  int? authorID; // variable to hold the current id and save it as this author ID

  Author({required super.name, required super.email}) {
    // increment id each time object of type Author gets created and assign it to this author
    authorID = ++id;
  }
}

class Book {
  String? name;
  String? ISBN;
  int? editionNumber;
  Author? author;

  Book({required this.name, required this.ISBN, required this.editionNumber, required this.author});
}

class Customer extends Person {
  List<Book>? bookList;

  Customer({required super.name, required super.email}) {
    bookList = [];
  }

  void addBook(Book book) {
    bookList!.add(book);
    print("Book ${book.name} by ${book.author!.name} is added to your list ✅");
  }

  void printInformation() {
    print("Customer Name : $name | Customer Email : $email");
    if (bookList == null || bookList!.isEmpty) {
      print("$name haven't added any books yet.");
    }
    else {
      for (var book in bookList!) {
        print("Book name : ${book.name} by ${book.author?.name}");
        print("Author ID : ${book.author!.authorID}");
        print("Book ISBN : ${book.ISBN}");
        print("Contact the author by email : ${book.author?.email}");
        print("--"*20);
      }
    }
  }
}
