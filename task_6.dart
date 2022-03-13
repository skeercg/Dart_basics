import 'dart:math';

class Point {
  double x;
  double y;
  double z;

  Point(this.x, this.y, this.z);

  factory Point.getPoint1() {
    return Point(0, 0, 0);
  }

  factory Point.getPoint2() {
    return Point(1, 1, 1);
  }

  double distanceTo(double x, double y, double z) {
    return sqrt(
        pow((x - this.x), 2) + pow((y - this.y), 2) + pow((z - this.z), 2));
  }
}

void main() {}
