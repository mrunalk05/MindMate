import 'package:flutter/material.dart';
// import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:mindmate/brijesh/threeSlides.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mindmate/brijesh/threedots.dart';
import 'package:mindmate/mrunal/login.dart';
// import 'package:mindmate/mrunal/lib/main.dart';
// import 'package:mindmate/mrunal/login.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import 'package:mindmate/mrunal/lib/dashboard.dart';
// import 'package:mindmate/mrunal/lib/loginPage.dart';

// import '../main.dart';

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
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
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
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                  elevation: MaterialStatePropertyAll(0),
                  shape: MaterialStatePropertyAll(OvalBorder()),
                ),
                onPressed: () => {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                          (route) => (route.isFirst))
                      // if ((token != null &&
                      //     JwtDecoder.isExpired(token) == false))
                      //   {
                      //     Navigator.pushAndRemoveUntil(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) =>
                      //                 Dashboard(token: token)),
                      //         (route) => (route.isFirst))
                      //   }
                      // else
                      //   {
                      //     Navigator.pushAndRemoveUntil(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => SignInPage()),
                      //         (route) => (route.isFirst))
                      //   }
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
