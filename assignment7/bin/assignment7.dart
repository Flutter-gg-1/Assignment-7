import 'dart:io';

import 'exercise1.dart';
import 'exercise2.dart';

void main() {
  int? userInput;

  print("Please choose a number of exercise :");
  print("1 | Exercise 1");
  print("2 | Exercise 2");

  try {
    userInput = int.parse(stdin.readLineSync()!);

    switch (userInput) {
      case 1:
        showExercise1();
        break;
      case 2:
        showExercise2();
        break;
      default:
        print("Please choose a number 1 or 2 ");
    }
  } on FormatException {
    print("Please choose a number 1 or 2 ");
  }
}
