import 'package:flutter/material.dart';

class Slide1 extends StatelessWidget {
  const Slide1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          SizedBox(
            height: 45,
          ),
          Text(
            "Hey... \nI am MindMate",
            style: TextStyle(
              fontSize: 45,
            ),
          ),
          Image(
              image: NetworkImage(
                  "https://design.vectr.com/images/tutorials/what-are-vector-graphics/raster-vs-vector.png")),
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
          SizedBox(
            height: 145,
          ),
          Text(
            "Text2",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
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
          SizedBox(
            height: 145,
          ),
          Text(
            "Text3",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image(
              image: NetworkImage(
                  "https://design.vectr.com/images/tutorials/what-are-vector-graphics/raster-vs-vector.png")),
        ],
      ),
    );
  }
}
