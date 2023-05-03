import 'package:flutter/material.dart';
import 'package:hero_animation_eg/full_pic_page.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hero Animation"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const FullImage()));
                },
                child: SizedBox(
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
            const SizedBox(
              height: 25,
            ),
            const Text(
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
