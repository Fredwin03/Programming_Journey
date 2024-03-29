import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  // final String title;
  const TaskCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 32
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get Started!',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Color(0xFF211551)
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Hello User! Welcome to the TODO app, this a default task that you can edit or delete to start using the app.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF868290),
                height: 1.5,
              ),
            )
          )
        ],
      )
    );
  }
}
