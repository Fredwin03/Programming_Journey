import 'package:flutter/material.dart';
import 'package:learningdart/practice/displays.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int index = 0;
  List<Widget> pages = [Home(), Settings(), Add(), Subscribe(), Library()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: pages[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          iconSize: 35,
          selectedLabelStyle: TextStyle(
            fontSize: 15,
            fontFamily: 'Monospace',
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
          ),
          currentIndex: index,
          backgroundColor: Colors.deepPurple,
          selectedItemColor: Color.fromARGB(255, 255, 255, 255),
          unselectedItemColor: Color.fromARGB(255, 178, 147, 238),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.short_text), label: 'Settings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_rounded), label: 'Create'),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_add), label: 'Library'),
          ]),
    );
  }
}
