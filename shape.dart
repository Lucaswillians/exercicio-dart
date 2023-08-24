import 'dart:math';

abstract class Shape {
  String color;
  bool filled;

  Shape()
      : this.color = 'red',
        this.filled = true;

  Shape.withColorAndFilled(this.color, this.filled);

  double getArea();
  double getPerimeter();

  @override
  String toString() => 'Shape[color=$color, filled=$filled]';
}
