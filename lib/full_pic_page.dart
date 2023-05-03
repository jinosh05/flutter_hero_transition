import 'package:flutter/material.dart';

class FullImage extends StatefulWidget {
  const FullImage({Key? key}) : super(key: key);

  @override
  FullImageState createState() => FullImageState();
}

class FullImageState extends State<FullImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            child: Hero(
              tag: "my_pic",
              child: Image.asset(
                "assets/any.jpg",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
