import 'dart:io';

void main(){
  int a=int.parse(stdin.readLineSync()!);
  int b=int.parse(stdin.readLineSync()!);
  int c=int.parse(stdin.readLineSync()!);
  int d=int.parse(stdin.readLineSync()!);
  int e=int.parse(stdin.readLineSync()!);
  int ans=(a+b+c+d+e)~/5;
  print("Marks : $ans");
}