import 'dart:io';
import 'dart:math';

class MinMax {
  late int min, max;
  late int random;

  MinMax() {
    min = int.parse(Platform.environment['MIN'] ?? '10');
    max = int.parse(Platform.environment['MAX'] ?? '100');

    if (min > max) {
      throw ArgumentError('MIN cannot be greater than MAX.');
    }
    random = Random().nextInt(max - min + 1) + min;
  }
}

void main() {
  try {
    MinMax r = MinMax();
    print('Random number between MIN and MAX: ${r.random}');
  } catch (e) {
    print('Error: $e');
  }
}
