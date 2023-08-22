void main(){
  printName("long", middleName: "long");

  print(sumUp(1));
}


void printName(String firstname, {required String middleName}){
  print("$firstname ${middleName}");
}


int sumUp(a,  [  int? b]){
  return a + b;
}