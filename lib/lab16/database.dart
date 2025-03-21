import 'package:flutter/material.dart';
import 'package:lab/lab16/mydatabase.dart';

class Databasedemo extends StatefulWidget {
  Databasedemo({super.key});

  @override
  State<Databasedemo> createState() => _DatabasedemoState();
}

class _DatabasedemoState extends State<Databasedemo> {
  Mydatabse database = Mydatabse();

  @override
  void initState(){
    super.initState();
  }

  Future<void> selectAll() async{
    await database.selectAllState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: FutureBuilder(
              future: database.selectAllState(),
              builder: (context,snapshot){
                if(snapshot.connectionState==ConnectionState.waiting){
                  return Center(child: CircularProgressIndicator(),);
                }else if(snapshot.hasData){
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context,index){
                      return ListTile(
                        title: Text(snapshot.data![index]["state_name"]),
                        trailing: Text(snapshot.data![index]["state_id"].toString()),
                      );
                    },
                  );
                }else{
                  return Text("Error");
                }
              }
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context){
                      TextEditingController state=TextEditingController();
                      return AlertDialog(
                        title: Text("Add"),
                        content: TextField(
                          controller: state,
                        ),
                        actions: [
                          ElevatedButton(onPressed: ()async {
                            await database.insertState({"state_name":state.text});
                            Navigator.of(context).pop();
                          }, child: Text("Submit")
                          )
                        ],
                      );
                    }
                );
              }
          ),
        )
    );
  }
}
