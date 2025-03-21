import 'dart:convert';

import 'package:http/http.dart'as http;

class Apiserves{
  var base_url='https://67b58a7e07ba6e59083d411e.mockapi.io/Todo';

  Future<List<dynamic>> getapiuser () async{
    var res=await http.get(Uri.parse(base_url));
    List<dynamic> data=jsonDecode(res.body);
    return data;
  }

  Future<void> adddetails(Map<String,dynamic> map) async{
    await http.post(Uri.parse(base_url),body: map);
  }
  Future<void> editdetails(String? id,Map<String,dynamic> updateddata) async{
    await http.put(Uri.parse('$base_url/$id'),body: updateddata);
  }
  Future<void> deletedetails(String? id) async{
    await http.delete(Uri.parse('$base_url/$id'));
  }

}