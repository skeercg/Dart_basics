extension Root on num {
  num findRoot(int n) {
    if (n > this || n <= 1) throw Exception('Can\'t calculate such root!');
    num root = this / n;
    num rn = this;
    while ((root - rn).abs() >= 0.0000001) {
      rn = this;
      for (int i = 1; i < n; i++) {
        rn = rn / root;
      }
      root = 0.5 * (rn + root);
    }
    return root;
  }
}

void main() {
  num a = 9;
  print(a.findRoot(2));
}
