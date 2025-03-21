import 'dart:io';

void main(){
  fibonacci(10);
  //0,1,1,2,3,5,8,13,21
}

void fibonacci(int n){
  // int n=int.parse(stdin.readLineSync()!);
  print("0 + 1 + ");
  int a=0,b=1,sum=0;
  int temp=0;
  while(true){
    sum=a+b;
    print("$sum + ");
    a=b;
    b=sum;
    temp++;
    if(temp==n){
      break;
    }
  }
}