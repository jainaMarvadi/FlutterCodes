// import 'package:darsh/21/homepage.dart';
// import 'package:darsh/21/page1.dart';
// import 'package:darsh/21/page2.dart';
// import 'package:darsh/21/page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class actionbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text('Alert⚠️',style: TextStyle(fontSize: 30),),
                  content: Text('Content'),
                );
              });
            }, icon: )
          ],
        ),
        // body: TabBarView(children: [homepage(),page1(),page2(),page4()],),
        // drawer: Drawer(
        //   child: ListView(
        //     children: [
        //       DrawerHeader(
        //           child: Container(
        //             color: Colors.greenAccent,
        //             child: Center(child: Text('Header',style: TextStyle(fontSize: 50,color: Colors.white),),),
        //           )
        //       ),
        //       ListTile(
        //         title: Text('Home'),
        //         onTap: () {
        //           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>homepage()));
        //         },
        //       ),
        //       ListTile(
        //         title: Text('Page 1'),
        //         onTap: () {
        //           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page1()));
        //         },
        //       ),
        //       ListTile(
        //         title: Text('Page 2'),
        //         onTap: () {
        //           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page2()));
        //         },
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}