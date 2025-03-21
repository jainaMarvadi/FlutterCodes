import 'dart:io';

void main(){
  print("Enter first number :");
  int number1=int.parse(stdin.readLineSync()!);
  print("Enter second number :");
  int number2=int.parse(stdin.readLineSync()!);

  for(int i=number1;i<=number2;i++){
    if(i%2==0 && i%3!=0){
      print(i);
    }
  }
}