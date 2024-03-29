import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Grids extends StatelessWidget {
  final int count;
  final Color color;
  const Grids({this.count = 5, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: count,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(5),
          child: Container(
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          )),
        );
      },
    ));
  }
}
