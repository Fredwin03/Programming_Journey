import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Padding(
            child: Column(children: [
              Container(
                color: Colors.blueGrey,
                height: 200,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Text(
                      '<Title>\n<Channel Name>',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Icon(Icons.menu)
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              )
            ]),
            padding: const EdgeInsets.symmetric(vertical: 10.0),
          );
        },
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'This is the Settings',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Need to Create something?',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Subscribe extends StatelessWidget {
  const Subscribe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Your subscriptions list',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Your library',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
