import 'dart:io';

void main(){
  int meter=int.parse(stdin.readLineSync()!);
  int feet=meter*3;
  print("Feet : $feet");
}