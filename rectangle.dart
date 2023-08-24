import 'dart:math';

import 'shape.dart';

class Rectangle extends Shape {
  double _length;
  double _width;

  Rectangle()
      : this._length = 1.5,
        this._width = 2.5;

  Rectangle.withLengthWidth(this._length, this._width);

  Rectangle.withLengthWidthColorFilled(
      this._length, this._width, String color, bool filled)
      : super.withColorAndFilled(color, filled);

  set length(double length) {
    this._length = length;
  }

  double get length => this._length;

  set width(double width) {
    this._width = width;
  }

  double get width => this._width;

  @override
  double getArea() => _width * _length;

  @override
  double getPerimeter() => (2 * _width) + (2 * _length);

  @override
  String toString() =>
      'Rectangle[${super.toString()},lenght=$_length, width=$width]';
}

void main() {
  var r1 = Rectangle();
  var r2 = Rectangle.withLengthWidth(3.7, 8.6);
  var r3 = Rectangle.withLengthWidthColorFilled(3.9, 4.6, "Yellow", false);

  print(r1);
  print(r2);
  print(r3);
  print('R1: Área: ${r1.getArea()}, Perímetro: ${r1.getPerimeter()}');
  print('R2: Área: ${r2.getArea()}, Perímetro: ${r2.getPerimeter()}');
}
