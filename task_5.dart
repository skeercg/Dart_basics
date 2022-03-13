List<int> getDigits(List<String> values) {
  List<int> digits = [];
  values.forEach((e) {
    if (e == 'one') {
      digits.add(1);
    }
    if (e == 'two') {
      digits.add(2);
    }
    if (e == 'three') {
      digits.add(3);
    }
    if (e == 'four') {
      digits.add(4);
    }
    if (e == 'five') {
      digits.add(5);
    }
    if (e == 'six') {
      digits.add(6);
    }
    if (e == 'seven') {
      digits.add(7);
    }
    if (e == 'eight') {
      digits.add(8);
    }
    if (e == 'nine') {
      digits.add(9);
    }
    if (e == 'zero') {
      digits.add(0);
    }
  });
  return digits;
}

void main() {}
