import 'package:flutter/material.dart';

class partA2 extends StatelessWidget {
  const partA2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Container(color: Colors.green,)),
          Expanded(child: Container(color: Colors.white,)),
          Expanded(child: Container(color: Colors.pinkAccent,))
        ],
      ),
    );
  }
}
