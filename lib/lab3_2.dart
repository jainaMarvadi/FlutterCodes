import 'dart:io';

void main(){
  print("Enter number :");
  int a=int.parse(stdin.readLineSync()!);
  int temp=1;
  for(int i=1;i<=a;i++){
    temp=temp*i;
  }
  print(temp);
}