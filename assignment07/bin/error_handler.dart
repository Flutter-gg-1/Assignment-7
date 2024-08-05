import 'dart:io';
import 'color_print.dart';

//Error handler
printMenu() {
  printInfo("\nAssignment 07");
  printInfo("1. Exercise 1");
  printInfo("2. Exercise 2");
  printInfo("3. Exit");
  printInfo("Enter your choice:");
  try {
    return int.parse(stdin.readLineSync()!);
  } catch (e) {
    return printError(e);
  }
}