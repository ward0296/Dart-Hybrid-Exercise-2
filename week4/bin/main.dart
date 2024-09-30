//References for this exercise, course website, youtube, dart.dev, Professor Shoaib, and Stack overflow
import 'dart:io';
import '../lib/lucky.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide a list of names as command line arguments.');
    exit(1);
  }

  for (var name in arguments) {
    String changedName =
        name[0].toUpperCase() + name.substring(1).toLowerCase();
    // this will capitalize the first letter of the name.

    Lucky lucky = Lucky();
    print('Hello $changedName. Your lucky number is ${lucky.luckyNumber}.');
  }
}
