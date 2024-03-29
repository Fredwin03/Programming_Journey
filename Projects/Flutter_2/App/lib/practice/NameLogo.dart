import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double size;
  const Logo({required this.size});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(128, 80, 79, 79),
        body: Center(
          child: Container(
            width: size,
            height: size,
            child: Center(
                child: Text(
              'Fredwin',
              style: TextStyle(
                  color: Color.fromARGB(42, 255, 255, 255),
                  fontSize: size,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Monospace'),
            )),
            decoration: BoxDecoration(
              color: Color.fromARGB(184, 15, 15, 15),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    offset: Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 1),
                BoxShadow(
                    color: Color.fromARGB(255, 64, 63, 63),
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
