// import 'package:darsh/21/homepage.dart';
// import 'package:darsh/21/page1.dart';
// import 'package:darsh/21/page2.dart';
// import 'package:darsh/21/page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navigator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab 1',),
              Tab(text: 'Tab 2',),
              Tab(text: 'Tab 3',),
              Tab(text: 'Tab 4',),
            ],
          ),
        ),
        body: TabBarView(children: [homepage(),page1(),page2(),page4()],),
          drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Container(
                    color: Colors.lightBlueAccent,
                    child: Center(child: Text('Header',style: TextStyle(fontSize: 50,color: Colors.white),),),
                  )
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>homepage()));
                },
              ),
              ListTile(
                title: Text('Page 1'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page1()));
                },
              ),
              ListTile(
                title: Text('Page 2'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page2()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}