import 'dart:math';

int randomNumberBetween({required int min, required int max}) {
  if (min > max) {
    throw ArgumentError('min cannot be greater than max.');
  }

  var rng = Random();
  int myRandomNumber = rng.nextInt(max - min + 1) + min;
  return myRandomNumber;
}

void main() {
  for (var i = 0; i < 100; i++) {
    try {
      int r = randomNumberBetween(min: 10, max: 100);
      print(r);
    } catch (e) {
      print(e);
    }
  }
}
