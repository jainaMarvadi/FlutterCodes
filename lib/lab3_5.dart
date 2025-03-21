import 'dart:io';

void main(){
  String a = stdin.readLineSync()!;
  String rev = "";
  String ch;

  for (int i = a.length-1; i >=0;i--){
    rev=rev+a[i].toString();
  }
  print(rev);
}