import 'package:flutter/material.dart';

class tabbar extends StatelessWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      body: CustomScrollView(anchor: 0.05, slivers: [
        SliverAppBar(
          leading: Icon(
            Icons.wifi,
            color: Colors.white,
            size: 25,
          ),
          shadowColor: Colors.yellow,
          collapsedHeight: 70,
          centerTitle: true,
          scrolledUnderElevation: 50,
          // title: Center(
          //     child: Text(A
          //   'W E L C O M E',
          //   style: TextStyle(
          //       color: Color.fromARGB(255, 255, 255, 255), fontSize: 30),
          // )),
          backgroundColor: Colors.black,
          floating: true,
          expandedHeight: 150,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: Container(
              // child: Center(
              //   child: Text('W E L C O M E',
              //       style: TextStyle(
              //           color: Color.fromARGB(255, 255, 255, 255),
              //           fontSize: 30)),
              // ),
              child: Image.network(
                'https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
                height: 20,
                width: 20,
                scale: 6,
              ),
              color: Colors.pink,
            ),
            title: Text('W E L C O M E'),
            centerTitle: true,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.grey[300],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.grey[300],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 400,
                color: Colors.grey[300],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
