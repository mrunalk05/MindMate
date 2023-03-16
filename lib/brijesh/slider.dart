import 'package:flutter/material.dart';
import 'package:mindmate/brijesh/threeSlides.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mindmate/brijesh/threedots.dart';
import 'package:mindmate/mrunal/login.dart';

class SliderShow extends StatefulWidget {
  const SliderShow({Key? key}) : super(key: key);

  @override
  State<SliderShow> createState() => _SliderShowState();
}

class _SliderShowState extends State<SliderShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [Slide1(), Slide2(), Slide3()].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: i);
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 45,
            ),
            const ThreeDots(),
            ElevatedButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ))
                    },
                child: const Text("Skip")),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
