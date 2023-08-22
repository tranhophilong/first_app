
import 'dart:ffi';
import 'dart:io';
late String text;

void main(){

  var meal1 = Meal();
  meal1.description = "3";
  print(meal1.description);

  Set<int> a = {1, 5, 4};

  var b = [1,2 ,3, 7, 8];
  b.sort((a, b) => (b-a));
  print(b);

  // var max = a.first;
  // for (var value in a) {
  //   max = (max < value) ? value : max;
  // }

}




int _computeValue() {
  print('In _computeValue...');
  return 3;
}

class CachedValueProvider {
  final _cache = _computeValue();
  int get value => _cache;
}

class Animal {
  void chase(Animal a) { print(a); }
  Animal get parent => this;
}

class HoneyBadger extends Animal {
  @override
  void chase(Animal a) { print(a); }

  @override
  HoneyBadger get parent => this;
}

class Meal{
  String a = "2";

  late String _description;

  set description(String des){
    _description = "meal $des";
  }
  String get description => _description;
}

bad(String? maybeString) {

  print(maybeString?.length);
}

int getScore(int a, int? b){
  return b ?? 1;
}

bool isValid(String s) {
  var dict = {'(': ')', '{':'}', '[':']'};
  var stack = [s[0]];
  if (s.length == 1){
    return false;
  }
  for (var i = 1 ;i < s.length; i++){
    if(stack.isNotEmpty){
      if (dict[stack.last] == s[i]){
        stack.removeLast();
      }else{
        stack.add(s[i]);
      }
    }else{
      stack.add(s[i]);
    }
  }
  if(stack.isNotEmpty){
    return false;
  }
  return true;
}
