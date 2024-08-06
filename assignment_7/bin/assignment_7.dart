import 'exercise1.dart';
import 'exercise2.dart';
import 'dart:io';

// Here we go
void main() {

  // To keep the program running
  while (true) {

    // Display menu
    print('Welcome .. ');
    print('1. To run exercise 1');
    print('2. To run exercise 2');
    print('3. Exit');

    // To handheld error when inter any string
    try {
      // Get user input
      stdout.write('Choose an option: ');

      // convert the input from string to int
      final input = int.parse(stdin.readLineSync()!);
      switch (input) {
        case 1:
          Exercise1.main();
          break;
        case 2:
          Exercise2.main();
          break;
        case 3:
          return;
      }
    } catch (err) {
      print(err);
    }
  }
}
