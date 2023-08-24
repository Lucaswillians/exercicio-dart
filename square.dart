import 'rectangle.dart';
class Square extends Rectangle {
  Square() : super();
  Square.withSide(double side) : super.withLengthWidth(side, side);
  Square.withSideColorFilled(double side, String color, bool filled)
      : super.withLengthWidthColorFilled(side, side, color, filled);
  double get side => width;
  set side(double side) {
    super.width = side;
    super.length = side;
  }
  @override
  set width(double side) {
    this.side = side;
  }
  @override
  set length(double side) {
    this.side = side;
  }
  @override
  String toString() => 'Square[${super.toString()}]';
}
void main() {
  var s1 = Square();
  print(s1);
  var s2 = Square.withSide(1.5);
  print(s2);
  var s3 = Square.withSideColorFilled(2, 'orange', true);
  print(s3);
  s3.length = 4.4;
  print(s3);
}