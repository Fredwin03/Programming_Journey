import 'package:flutter/material.dart';
import 'package:learningdart/constraints.dart';
import 'package:learningdart/login/login.dart';
import 'package:learningdart/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // theme: ThemeData(
        //     scaffoldBackgroundColor: kBackgroundColor,
        //     primaryColor: kPrimaryColor,
        //     textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        //     visualDensity: VisualDensity.adaptivePlatformDensity),
        home: Login(),
      ),
    );
  }
}
