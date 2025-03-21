import 'package:flutter/material.dart';

class partB2 extends StatelessWidget {
  const partB2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Column(children: [
            Expanded(
                flex: 2,
                child: Container(color: Colors.green,)),
            Expanded(
                flex: 4,
                child: Container(color: Colors.white,)),
            Expanded(
                flex: 4,
                child: Container(color: Colors.yellow,))
          ],)),
          Expanded(child: Column(children: [
            Expanded(
                flex: 4,
                child: Container(color: Colors.pink[400],)),
            Expanded(
                flex: 4,
                child: Container(color: Colors.grey,)),
            Expanded(
                flex: 2,
                child: Container(color: Colors.blue,))
          ],)),
          Expanded(child: Column(children: [
            Expanded(
                flex: 1,
                child: Container(color: Colors.green[200],)),
            Expanded(
                flex: 3,
                child: Container(color: Colors.white,)),
            Expanded(
                flex: 2,
                child: Container(color: Colors.pinkAccent[100],))
          ],))
        ],
      ),
    );
  }
}
