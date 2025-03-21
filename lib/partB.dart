import 'package:flutter/material.dart';

class partB1 extends StatelessWidget {
  const partB1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Colors.green,)),
            Expanded(child: Container(color: Colors.white,)),
            Expanded(child: Container(color: Colors.yellow,))
          ],)),
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Colors.pink[400],)),
            Expanded(child: Container(color: Colors.grey,)),
            Expanded(child: Container(color: Colors.blue,))
          ],)),
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Colors.green[200],)),
            Expanded(child: Container(color: Colors.white,)),
            Expanded(child: Container(color: Colors.pinkAccent[100],))
          ],))
        ],
      ),
    );
  }
}
