import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:twight/ui/navigationBar.dart';
import 'package:twight/ui/screens/chat/chat.dart';
import 'package:twight/ui/screens/swipe/swipe.dart';
import 'package:twight/ui/screens/profile/profile.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  var screen = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.add, title: 'Swipe'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          style: TabStyle.fixed,
          initialActiveIndex: 0, //optional, default as 0
          onTap: (int i) {
            setState(() {
              screen = i;
            });
            print(i);
          },
        ),
        body: homescreen[screen],
      ),
    );
  }
}

var homescreen = [
  chatHome(),
  swipeHome(),
  profileHome(),
];
