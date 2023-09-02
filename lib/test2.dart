import 'package:first_app/test.dart';
//
void main(){
  Point? p1 = const Point(10, 20);


  const p2 =   Point(10, 20);

  print(identical(p1, p2));
}

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}