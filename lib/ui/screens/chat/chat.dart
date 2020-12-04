import 'package:flutter/material.dart';

class chatHome extends StatefulWidget {
  @override
  _chatHomeState createState() => _chatHomeState();
}

class _chatHomeState extends State<chatHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView.separated(
          itemCount: 70,
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("User $index"),
              subtitle: Text("i like your big dick energy"),
            );
          },
        ),
      ),
    );
  }
}
