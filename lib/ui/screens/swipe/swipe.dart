import 'package:flutter/material.dart';
import 'package:twight/ui/screens/swipe/card.dart';

class swipeHome extends StatefulWidget {
  @override
  _swipeHomeState createState() => _swipeHomeState();
}

class _swipeHomeState extends State<swipeHome> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: swipeCard(),
    );
  }
}
