import 'package:flutter/material.dart';

import 'aboutpage.dart';
import 'homepage.dart';

class C_Drawer extends StatelessWidget {
  const C_Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
          elevation: 7,
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: Text("Drawer"),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.deepPurple[400],
            child: ListView(children: [
              DrawerHeader(
                  child: Center(
                child: Text(
                  'APP LOGO',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              )),
              ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  iconColor: Colors.deepPurple[200],
                  title: Text('Home',
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About()));
                  }),
              ListTile(
                leading: Icon(Icons.info),
                iconColor: Colors.deepPurple[200],
                title: Text('About',
                    style: TextStyle(fontSize: 15, color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              )
            ]),
          ),
        ),
      ),
    );
    ;
  }
}
