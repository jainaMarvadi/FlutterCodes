import 'dart:io';

void main(){
  interest(245, 10, 5);
}

void interest(int p,int r,int t){
  // p*r*t/100
  int interest=(p*r*t/100).toInt();
  print("Simple Interst : $interest");
}