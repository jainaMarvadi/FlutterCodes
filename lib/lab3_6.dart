import 'dart:io';

void main(){
  int n;

  int even=0,odd=0;
  print("Enter values, enter zero to break iteration ");
  while(true){
    n=int.parse(stdin.readLineSync()!);
    if(n>0 && n%2==0){
      even=even+n;
    }
    else if(n<0 && n%2!=0){
      odd=odd+n;
    }
    else if(n==0){
      break;
    }
  }
  print("Sum of Positive even numbers : $even and sum of negative odd number : $odd");
}