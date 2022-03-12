import 'dart:math';

String toBinary(int number) {
  String result = '';
  while (number > 0) {
    result += (number % 2).toString();
    number ~/= 2;
  }
  return result.split('').reversed.join('');
}

int toDecimal(String number) {
  int result = 0;
  for (int i = number.length - 1; i >= 0; i--) {
    if (number[i] == '1') {
      result += pow(2, number.length - 1 - i).toInt();
    }
  }
  return result;
}

void main() {
  print(toDecimal('1010'));
}
