import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:twight/main.dart';

class bottomNavigationBar extends StatefulWidget {
  @override
  _bottomNavigationBarState createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      items: [
        TabItem(icon: Icons.message, title: 'Message'),
        TabItem(icon: Icons.add, title: 'Swipe'),
        TabItem(icon: Icons.people, title: 'Profile'),
      ],
      style: TabStyle.fixed,
      initialActiveIndex: 0, //optional, default as 0
      onTap: (int i) {
        setState(() {});
        print(i);
      },
    );
  }
}
