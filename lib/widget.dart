import 'dart:math';

class WidGet{
   final int width = 200;
    final int height = 300;
  // String? label;



  @override
  String toString() {
// TODO: implement toString
    return "$width $height";
  }
}

void main(){

  var logger = Logger('UI');
  logger.log('Button clicked');

  var logMap = {'name': 'UI'};
  var loggerJson = Logger.fromJson(logMap);
  print(loggerJson);

  var aclass1 = AClass(p1: 1, p2: 2);
  var aclass2 = AClass(p1: 1, p2: 3);
  print(aclass1.p1! > aclass2.p2!);

}

class AClass{
   int?  p1;
   int? p2;
  AClass({this.p1, this.p2});

  AClass.construct2(this.p1);

  void doSomeThingA(){

  }

  void doSomThingA1(){

  }
}



 class BClass extends AClass{
  BClass();

  @override
  int? p1;

  @override
  int? p2;

  @override
  void doSomeThingA() {
    // TODO: implement doSomeThingA
  }



}


class Person {
  String? firstName;
  Person.fromJson1(Map data) {
    print('in Person');
  }

}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson()

  Employee() : super.fromJson1({1:1}){

  }

  void doSomething(){


  }

}

class Vector2d {
  // ...
  int x;
  int y;

  Vector2d({required this.x, required this.y});
}

class Vector3d extends Vector2d {


  Vector3d({required super.y}) : super(x: 0){

  }
}

class Point {
  final double x;
  final double y;
  final double distanceFromOrigin;

  Point(double x, double y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
}



class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }

}


