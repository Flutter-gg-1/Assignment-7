import 'circle.dart';
import 'rectangle.dart';
import 'book.dart';
import 'dart:io';
import 'author.dart';

void main(List<String> arguments) {
  // Circle c1 = Circle(5);
  // Circle c2 = Circle.noAttribute();
  // c1.getArea();
  // c1.getPerimeter();
  // print("Radius of c2: ${c2.raduis}");
  // Rectangle r1 = Rectangle(3, 5);
  // r1.getArea();
  // r1.width = 8;
  // r1.getPerimeter();
  List<Author> auth = [];
  int input;
  List count = [];
  try {
    while (true) {
      print("Kindly enter number 1 to add Author and 2 to quit the app ");
      input = int.parse(stdin.readLineSync()!);
      if (input == 1) {
        switch (input) {
          case 1:
            print("add auther: ");
            String auther = stdin.readLineSync()!;
            print("add Email: ");
            String email = stdin.readLineSync()!;

            var authers = Author(name: auther, email: email);

            count.add(Author.id);
            auth.add(authers);
        }
      } else if (input == 2) {
        break;
      }
    }
  } catch (error) {
    print(error);
  }

  for (var element in count) {
    print("Authe$element");
  }
}
