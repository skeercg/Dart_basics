int gcd(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return gcd(b, a % b);
  }
}

int lcm(int a, int b) {
  return a * b ~/ gcd(a, b);
}

List<int> divisors(int n) {
  List<int> d = [];
  for (int i = 2; i <= n; i++) {
    while (n % i == 0) {
      d.add(i);
      n ~/= i;
    }
  }
  if (n != 1) {
    d.add(n);
  }
  return d;
}

void main() {}
