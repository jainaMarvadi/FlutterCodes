import 'dart:io';

void main(){
  print("Enter length of array : ");
  int n=int.parse(stdin.readLineSync()!);
  evenodd(n);
}

void evenodd(int n){
  List<int> list=[];
  int temp1=0,temp2=0;
  for(int i=0;i<n;i++){
    print("Enter element : ");
    list.add(int.parse(stdin.readLineSync()!));
  }
  for(int i=0;i<n;i++){
    if(list[i]%2==0){
      temp1++;
    }
    else{
      temp2++;
    }
  }
  print("Even numbers : $temp1 , odd numbers : $temp2.");
}