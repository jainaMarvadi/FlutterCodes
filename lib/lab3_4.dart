import 'dart:io';

void main(){
  print("Enter number : ");
  int a=int.parse(stdin.readLineSync()!);

  int temp;
  int temp1=0;

  while(a!=0){
    temp=a%10;
    temp1=(temp1*10)+temp;
    a=a~/10;
  }
  print(temp1);
}