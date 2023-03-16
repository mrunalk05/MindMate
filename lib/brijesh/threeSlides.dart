import 'package:flutter/material.dart';

class Slide1 extends StatelessWidget {
  const Slide1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          // SizedBox(
          //   height: 25,
          // ),
          Text(
            "Hey there.. ",
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          Text(
            "I am MindMate",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Image(image: AssetImage("./assets/logo.png")),
        ],
      ),
    );
  }
}

class Slide2 extends StatelessWidget {
  const Slide2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            "Your All Time Companion",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image(image: AssetImage("assets/img2jpeg.jpeg")),
        ],
      ),
    );
  }
}

class Slide3 extends StatelessWidget {
  const Slide3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            "The only Application \nyou need for health",
            style: TextStyle(
              fontSize: 25,
              // fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image(image: AssetImage("assets/img3.jpg")),
        ],
      ),
    );
  }
}
