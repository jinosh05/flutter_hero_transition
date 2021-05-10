import 'package:flutter/material.dart';
import 'package:hero_animation_eg/full_pic_page.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hero Animation"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FullImage()));
                },
                child: Container(
                    width: 100,
                    height: 100,
                    child: Hero(
                      tag: "my_pic",
                      child: Image.asset(
                        "assets/any.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              " Click Image to Navigate",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            )
          ],
        ));
  }
}
