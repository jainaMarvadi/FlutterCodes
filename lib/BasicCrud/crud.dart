import 'package:flutter/material.dart';
import 'package:lab/BasicCrud//Constants/contsants.dart';

class Crud{


  List<Map<String,dynamic>> userList =[];

  //Create
  void addUSer(String name,age,email){
    Map<String,dynamic> map={};
    map[Name]=name;
    map[Age]=age;
    map[Email]=email;
    userList.add(map);
  }

  //read
  List<Map<String,dynamic>> getuserlist(){
    return userList;
  }

  //update
  void updateList(name,age,email,id){
      Map<String,dynamic> map={};
      map[Name]=name;
      map[Age]=age;
      map[Email]=email;

      userList[id]=map;
  }

  //delete
  void deleteUser(id){
      userList.remove(id);
  }
}
