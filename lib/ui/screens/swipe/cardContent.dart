import 'package:flutter/material.dart';

class cardContent extends StatefulWidget {
  @override
  _cardContentState createState() => _cardContentState();
}

class _cardContentState extends State<cardContent> {
  int imageIndex = 1;
  int imageCount = 5;
  var image = "https://picsum.photos/";
  init() {
    setState(() {
      imageIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (imageIndex == imageCount) {
              imageIndex = 1;
            } else {
              imageIndex++;
            }
          });
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("${image}${200 * imageIndex}"),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearProgressIndicator(
                      value: imageIndex / imageCount,
                    ),
                    Text(
                      "title",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Text("subtitle"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
