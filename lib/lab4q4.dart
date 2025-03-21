import 'dart:io';

void main(){
  check(5);
}

void check(int n){
  int temp=0;
  for(int i=2;i<=9;i++){
    if(n%i==0){
      temp++;
    }
  }
  if(temp==1){
    print(1);
  }
  else{
    print(0);
  }
}