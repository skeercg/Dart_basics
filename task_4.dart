Map<String, int> numberOfOccurences(List<String> values) {
  Map<String, int> amount = {};

  values.forEach((e) {
    if (amount[e] == null) {
      amount[e] = 1;
    } else {
      amount[e] = amount[e]! + 1;
    }
  });
  return amount;
}

void main() {}
