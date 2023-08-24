import 'dart:math';

import 'shape.dart';

class Circle extends Shape {
  double _radius;

  Circle() : this._radius = 1.0;
  Circle.withRadius(this._radius);

  Circle.withRadiusColorFilled(this._radius, String color, bool filled)
      : super.withColorAndFilled(color, filled);

  set radius(double radius) {
    this._radius = radius;
  }

  double get radius => this._radius;

  @override
  double getArea() => pi * pow(_radius, 2);
  
  @override
  double getPerimeter() => 2 * pi * _radius;

  @override
  String toString() => 'Circle[${super.toString()},radius=$_radius]';
}

void main() {
  var circle = Circle();
  var circleWithRadius = Circle.withRadius(2.5);
  var circle3 = Circle.withRadiusColorFilled(7.9, "blue", false);

  print('Raio do circulo: ${circle.radius}');
  print('Circulo 1:$circle');
  print('Circulo 2:$circleWithRadius');
  print('Circulo 3:$circle3');
  print('Raio do circulo: ${circleWithRadius.radius}');
  print('Raio do circulo: ${circleWithRadius.getArea()}');
  print('Raio do circulo: ${circleWithRadius.getPerimeter()}');
}
