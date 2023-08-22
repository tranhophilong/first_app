class WidGet{
  int? width;
  int? height;
  String? label;

  WidGet({ this.width,  this.height});

  WidGet.construct2(this.label, {this.width, this.height});

  @override
  String toString() {
// TODO: implement toString
    return "$width $height";
  }
}

void main(){
  var wig1 = WidGet(width: 100);
  print(wig1.toString());
}