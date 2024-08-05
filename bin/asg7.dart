import 'dart:ffi';
import 'dart:io';

import 'package:asg7/ex/ex1/exercise1.dart';
import 'package:asg7/ex/ex2/exercise2.dart';

void main() {
  Exercise1 ex1 = Exercise1();
  Exercise2 ex2 = Exercise2();

  ex1.runEx1();

  ex2.runEx2();

  // user input erorr handle

  int? giveNum;

  whileBreak:
  while (true) {
    try {
      print("\n---------  give number -----------");
      giveNum = int.parse(stdin.readLineSync()!);
    } on FormatException catch (er) {
      print("\n###########  eorr use only number   ###########\n");
      print(er);
    }

    switch (giveNum) {
      case 1:
        print("\n#######     good you print 1   #########");
        break whileBreak;

      case 2:
        print("\n#######     good you print 2   #########");
        break whileBreak;

        default :
        print("\n#######     chose 1 or 2 and use only num   #########");
    }
  }
}
