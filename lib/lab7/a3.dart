import 'package:flutter/material.dart';


class Lab7a3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
                labelText: 'Enter username',
              ),
            ),
          ],
        )
    );
  }
}