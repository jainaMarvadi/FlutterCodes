import 'package:flutter/material.dart';

class Aboutpage extends StatefulWidget {
  final String args;
  const Aboutpage({super.key,required this.args});

  @override
  State<Aboutpage> createState() => _AboutpageState();
}

class _AboutpageState extends State<Aboutpage> {
  String g="Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("About page ${widget.args}"),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Text("Male"),
              leading: Radio(
                value: "Male",
                groupValue: g,
                onChanged: (value){
                  setState(() {
                    g=value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Female"),
              leading: Radio(
                value: "Female",
                groupValue: g,
                onChanged: (value){
                  setState(() {
                    g=value!;
                  });
                },
              ),
            ),
            Text(g,style: TextStyle(fontFamily: "RobotMono",fontSize: 30,color: Colors.cyan[600]),),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed("/back",arguments: "Abc");
              },
              child: Text("back"),
            ),
          ],
        ),
      ),
    );
  }
}
