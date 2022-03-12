List<num> findNumbers(List<String> values) {
  values = values
      .where((e) => (double.tryParse(e) != null || int.tryParse(e) != null))
      .toList();
  return values
      .map((e) => (e.contains('.') ? double.parse(e) : int.parse(e)))
      .toList();
}

void main() {}
