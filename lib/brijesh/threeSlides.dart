import 'package:flutter/material.dart';

class Slide1 extends StatelessWidget {
  const Slide1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          // SizedBox(
          //   height: 25,
          // ),
          Text(
            "Hey ... ",
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
    return Container(
      child: Column(
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
          Image(
              image: NetworkImage(
                  "https://design.vectr.com/images/tutorials/what-are-vector-graphics/raster-vs-vector.png")),
        ],
      ),
    );
  }
}

class Slide3 extends StatelessWidget {
  const Slide3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
          Image(
              image: NetworkImage(
                  "https://design.vectr.com/images/tutorials/what-are-vector-graphics/raster-vs-vector.png")),
        ],
      ),
    );
  }
}
