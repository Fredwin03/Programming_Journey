import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calculator extends StatelessWidget {
  final double fontsize;
  final String btn;
  final Color btncolor;
  final Color bg;
  final Function press;
  const Calculator(
      {this.fontsize = 30.0,
      required this.btn,
      required this.btncolor,
      required this.bg,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // backgroundBlendMode: BlendMode.colorBurn,
        color: bg,
      ),
      child: SizedBox(
        width: 80,
        height: 80,
        child: FlatButton(
          onPressed: () {
            press(btn);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
          child: Text(
            btn,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontsize,
                color: btncolor),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double firstNumber = 0;
  double secondNumber = 0;
  String str = '';
  String display = 'Welcome';
  String l = '';
  void btnclick(String btnval) {
    l = display[display.length - 1];
    setState(() {
      if (btnval == '%' ||
          btnval == '/' ||
          btnval == 'X' ||
          btnval == '--' ||
          btnval == '+') {
        firstNumber = double.parse(display);
        display = '';
        print(firstNumber);
      }
      if (btnval == '=') {
        str = display[display.length - 1];
        secondNumber = double.parse(str);
        print(secondNumber);
      }
      if ((l == '%' ||
              l == '/' ||
              l == 'X' ||
              l == '--' ||
              l == '+' ||
              l == '=' ||
              l == '.') &&
          (btnval == '%' ||
              btnval == '/' ||
              btnval == 'X' ||
              btnval == '--' ||
              btnval == '+' ||
              btnval == '=' ||
              btnval == '.')) {
      } else if (btnval == 'C') {
        display = '';
      } else {
        display = display == 'Welcome' ? btnval : (display + btnval);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.from(colorScheme: ColorScheme.dark()),
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                  child: Text('Calculator',
                      style: GoogleFonts.bebasNeue(fontSize: 40))),
            ),
            body: Container(
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                child: Text(
                  display,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                alignment: Alignment(1.0, 1.0),
                padding: EdgeInsets.all(10),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Calculator(
                  btn: 'C',
                  btncolor: Colors.deepOrange,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '()',
                  btncolor: Colors.lightGreenAccent,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '%',
                  btncolor: Colors.lightGreenAccent,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '/',
                  btncolor: Colors.lightGreenAccent,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Calculator(
                  btn: '7',
                  btncolor: Colors.white,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '8',
                  btncolor: Colors.white,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '9',
                  btncolor: Colors.white,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: 'X',
                  btncolor: Colors.lightGreenAccent,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                )
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Calculator(
                  btn: '4',
                  btncolor: Colors.white,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '5',
                  btncolor: Colors.white,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '6',
                  btncolor: Colors.white,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '--',
                  btncolor: Colors.lightGreenAccent,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                )
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Calculator(
                  btn: '1',
                  btncolor: Colors.white,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '2',
                  btncolor: Colors.white,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '3',
                  btncolor: Colors.white,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '+',
                  btncolor: Colors.lightGreenAccent,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                )
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Calculator(
                  btn: '+/-',
                  btncolor: Colors.white,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '0',
                  btncolor: Colors.white,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '.',
                  btncolor: Colors.white,
                  bg: Color.fromARGB(255, 48, 48, 48),
                  press: btnclick,
                ),
                Calculator(
                  btn: '=',
                  btncolor: Colors.white,
                  bg: Colors.green,
                  press: btnclick,
                )
              ])
            ]))));
  }
}
