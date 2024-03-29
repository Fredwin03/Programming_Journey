import 'dart:js';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(112, 0, 204, 0.5),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color.fromRGBO(112, 0, 204, 1),
            centerTitle: true,
            title: Text(
              'Sign Up',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(bottom: 180),
            child: Center(
              child: Container(
                height: size.height * 0.5,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  // backgroundBlendMode: BlendMode.lighten,
                  color: Colors.deepPurple[500]?.withOpacity(0.4),
                ),
                child: Column(children: [
                  Text(
                    'Username',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 113, 71, 175),
                        fontSize: 20),
                  ),
                  Container(
                    padding: EdgeInsets.all(100),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Your Name',
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintStyle:
                              TextStyle(color: Colors.white.withOpacity(0.6))),
                    ),
                  )
                ]),
              ),
            ),
          )),
    );
  }
}
