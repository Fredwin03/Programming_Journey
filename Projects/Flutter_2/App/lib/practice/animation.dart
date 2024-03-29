import 'package:flutter/material.dart';

class Anime extends StatefulWidget {
  const Anime({Key? key}) : super(key: key);

  @override
  State<Anime> createState() => _AnimeState();
}

class _AnimeState extends State<Anime> {
  double boxHeight = 100;
  double boxWidth = 100;
  var color = Colors.deepPurple;
  double x = 0;
  double y = 0;

  void up() {
    setState(() {
      x = -1;
    });
  }

  void down() {
    setState(() {
      y = 1;
      color = Colors.teal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: down,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Center(
          child: AnimatedContainer(
            curve: Curves.decelerate,
            duration: Duration(seconds: 1),
            alignment: Alignment(x, y),
            child: Container(
              height: boxHeight,
              width: boxWidth,
              color: color,
            ),
          ),
        ),

        // floatingActionButton: FloatingActionButton(
        //   hoverColor: Colors.green,
        //   onPressed: down,
        //   child: Text('DOWN'),
        //   // ),
        //   // FloatingActionButton(
        //   //   hoverColor: Colors.green,
        //   //   onPressed: up,
        //   //   child: Text('UP'),
        //   // ),
        //   // FloatingActionButton(
        //   //   hoverColor: Colors.green,
        //   //   onPressed: () {},
        //   //   child: Text('RIGHT'),
        //   // )
      ),
    );
  }
}
