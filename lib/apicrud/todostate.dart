import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'apiserves.dart';

class Todo extends StatefulWidget {
  Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

TextEditingController titlecontroller = TextEditingController();
TextEditingController desccontroller = TextEditingController();
Apiserves api = Apiserves();

class _TodoState extends State<Todo> {

  dynamic showForm(String? id, title, desc) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: titlecontroller,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: desccontroller,
            decoration: InputDecoration(labelText: 'Description'),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              Map<String, dynamic> todo = {
                'title': titlecontroller.text,
                'desc': desccontroller.text,
              };

              if (id == null) {
                await api.adddetails(todo);
              } else {
                await api.editdetails(id, todo);
              }

              Navigator.pop(context);
              setState(() {

              });
            },
            child: Text(id == null ? 'Save' : 'Edit'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          titlecontroller.clear();
          desccontroller.clear();

          showModalBottomSheet(
            context: context,
            builder: (context) {
              return showForm(null, null, null);
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.add),
        ),
      ),
      body: FutureBuilder(
        future: api.getapiuser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> currtodo = snapshot.data![index];
                return ListTile(
                  title: Text(currtodo['title']),
                  subtitle: Text(currtodo['desc']),
                  trailing: Container(
                    width: 100,
                    child: Row(
                      children: [
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              titlecontroller.text = currtodo['title'];
                              desccontroller.text = currtodo['desc'];
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return showForm(currtodo['id'], titlecontroller, desccontroller);
                                },
                              );
                            },
                            icon: Icon(Icons.edit),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () async {
                              api.deletedetails(currtodo['id']);
                              setState(() {

                              });
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Text('No data found'),
            );
          }
        },
      ),
    );
  }
}