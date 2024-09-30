import 'dart:io';
import 'dart:math';

class Lucky {
  late int
      luckyNumber; //  late allows to delay the initialization of the variable.

  Lucky() {
    String? minEnv = Platform.environment['MIN'];
    String? maxEnv = Platform.environment['MAX'];

    int min = int.parse(minEnv ?? '10');
    int max = int.parse(maxEnv ?? '100');

    //This will check if the min is greater than max, if it is, it will throw an error.
    if (min > max) {
      throw ArgumentError('MIN cannot be greater than MAX.');
    }
    luckyNumber = Random().nextInt(max - min + 1) + min;
  }
}
