import "./exercise1.dart";
import "./exercise2.dart";
import "./error_handler.dart";
import 'color_print.dart';

void main() {
  //Variable to control the loop
  bool isExit = false;

  do {
    switch (printMenu()) {
      case 1:
        exerciseOne([]);
        break;
      case 2:
        exerciseTwo([]);
        break;
      case 3:
        isExit = true;
        break;
      default:
        printError("Invalid option. Please try again.");
        break;
    }
  } while (!isExit);

  print("\n\n\n");
}
