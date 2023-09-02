
import 'dart:ffi';
import 'dart:io';
late String text;

void main(){

  // final list = LinkedList<int>();
  // list.append(1);
  // list.append(2);
  // list.append(3);
  //
  // print(list.head?.next?.value);
  // ListNode dummy = ListNode();
  // var tail = dummy;
  // tail.next = ListNode(1);
  //
  // print(dummy.runtimeType);
  // print(dummy.next?.val);

  SomeClass? someThing = SomeClass(1, 2);
  // var someThing1 = someThing;
  print(someThing.p1);


  // someThing1.p2 = 3;
  // print(someThing.p2);
  // Int? a  = 1;


  }


class SomeClass{
  int  p1;
  int p2;
   SomeClass(this.p1, this.p2);
}

 class ListNode {
     int val;
     ListNode? next;
    ListNode([this.val = 0, this.next]);
}

class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  Node<E>? nodeAt(int index) {
    // 1
    var currentNode = head;
    var currentIndex = 0;

    // 2
    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  Node<E> insertAfter(Node<E> node, E value) {
    // 1
    if (tail == node) {
      append(value);
      return tail!;
    }
    // 2
    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  void append(E value) {
    // 1
    if (isEmpty) {
      push(value);
      return;
    }
    // 2
    tail!.next = Node(value: value);
    // 3
    tail = tail!.next;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
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


class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  @override
  bool operator ==(Object other) =>
      other is Vector && x == other.x && y == other.y;

  @override
  int get hashCode => Object.hash(x, y);

}

