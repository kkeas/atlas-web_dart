void main(List<String> args) {
  if (args.length != 1) {
    print('Usage: dart program.dart <number>');
    return;
  }

  String numberString = args[0];
  int number = int.parse(numberString);

  String result = '$number is ';

  if (number > 0) {
    result += 'positive';
  } else if (number < 0) {
    result += 'negative';
  } else {
    result += 'zero';
  }

  print(result);
}
