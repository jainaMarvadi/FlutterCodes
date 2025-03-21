import 'package:flutter/material.dart';

class Routingandraddio extends StatelessWidget {
  const Routingandraddio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.of(context).pushNamed("/about");
            },
            child: Text("next page")),
      ),
    );
  }
}
