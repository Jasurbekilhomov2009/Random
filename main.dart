import 'dart:math';

Stream<int> generateRandomNumbers(int count) async* {
  final randomnum = Random();
  for (int i = 0; i < count; i++) {
    yield randomnum.nextInt(1000);
  }
}

void main() async {
  final generate = generateRandomNumbers(5);
  await for (final num in generate) {
    print(num);
  }
}