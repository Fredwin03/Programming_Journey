import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int noOfTimes = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Text("You've pressed the button $noOfTimes times!"),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                noOfTimes++;
              });
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ),
              margin: EdgeInsets.all(50),
            ),
          ),
        ],
      ),
    );
  }
}
