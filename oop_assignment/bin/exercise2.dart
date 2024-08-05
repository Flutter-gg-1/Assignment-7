//-------Super class person----------
abstract class Person {
  String? name;
  String? email;

  Person({required this.name, required this.email});
}

//-------Sub class Author----------
class Author extends Person {
  static int count = 1;
  int? id;

  Author({required super.name, required super.email}) {
    id = count;
    count++;
  }
}

//-------class Book----------
class Book {
  String? name;
  String? isbn;
  int? edition;
  Author? author;
  Book(
      {required this.name,
      required this.isbn,
      required this.edition,
      this.author});
}

//-------Sub class Customer----------
class Customer extends Person {
  List<Book> bookList = [];

  Customer({required super.name, required super.email});

  addBook(Book book) {
    bookList.add(book);
  }

//Print Information method
  printInformation() {
    print("-------Customer Info-------");
    print("Customer name:$name");
    print("Customer email:$email");
    print("-------Customer books list-------");
    for (var element in bookList) {
      print("Book name:${element.name}");
      print("Book ISBN:${element.isbn}");
      print("Book edition:${element.edition}");
      print("------Auther info");
      print("Author name:${element.author!.name}");
      print("Author email:${element.author!.email}");
      print("-------------------------------");
    }
  }
}
