import 'dart:io';

void main(){
  print("Enter length : ");
  int n=int.parse(stdin.readLineSync()!);
  removeduplicate(n);
}

void removeduplicate(int n){
  List<int> list=[];
  for(int i=0;i<n;i++){
    print("Enter element : ");
    list.add(int.parse(stdin.readLineSync()!));
  }
  List<int> finallist=[];
  for(int i=0;i<n;i++){
    for(int j=1;j<i;j++){
      if(list[i]!=list[j]){
        finallist[i]=list[i];
      }
      else{
        finallist[i]=list[j];
      }
    }
  }
  print("$list , $finallist");
}