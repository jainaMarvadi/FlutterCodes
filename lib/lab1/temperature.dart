import 'dart:io';
void main(){
  int f=int.parse(stdin.readLineSync()!);
  int c=(f-32)*(5~/9);
  print("Temperature : $c");
}