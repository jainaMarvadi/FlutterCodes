import 'dart:io';

void main(){
  print("Enter number : ");
  int a=int.parse(stdin.readLineSync()!);
  int temp=0;

  for(int i=2;i<=a;i++){
    if(a%i==0){
      temp++;
    }
  }
  if(temp==1){
    print("Prime Number.");
  }
  else{
    print("Not a Prime number.");
  }
}