import 'dart:io';
import 'all_file.dart';
void showPrompt() {
  print('\nChoose one of the following exercises: ');
  print('1. exercise1, 2. exercise2, 3. Exit');
  int exercise = int.parse(stdin.readLineSync()!);
  switch (exercise) {
    case 1:
      exercise1();
      break;
    case 2:
      exercise2();
      break;
    case 3:
      exit(0);
    default:
      print('Wrong input, Exiting...');
      exit(0);
  }
}