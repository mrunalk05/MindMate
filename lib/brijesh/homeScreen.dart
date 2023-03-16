import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mindmate/brijesh/mainMenu.dart';
import 'package:mindmate/brijesh/resources.dart';
import 'package:mindmate/brijesh/tips.dart';

import '../anushka/eqtest.dart';
// import '../utkarsha/bottomNavigationbar.dart';
import 'chatbot/chatScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int navigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MindMate"),
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage("assets/back.jpg"), fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  softWrap: true,
                  text: const TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                      text:
                          "\"Mental health is important at every stage of life, from childhood and adolescence through adulthood.\""),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(image: AssetImage("assets/1.jpg"), height: 250),
              ),
              const Text(
                "Facts : ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textScaleFactor: 1.2,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      softWrap: true,
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black),
                          text:
                              "1. Mental illness affects around 14% of the population in India.\n2. Stigma and discrimination against people with mental illness exist in India.\n3.Mental health services in India are now increasing with the use of MindMate.\n4. India has one of the highest suicide rates in the world, with around 230,000 deaths by suicide reported annually."),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                    textAlign: TextAlign.center,
                    "Remember, You are not all alone, MindMate is your Companion",
                    textScaleFactor: 1.2,
                    style: TextStyle(fontWeight: FontWeight.w300)),
              ),
              CarouselSlider(
                options: CarouselOptions(height: 200.0),
                items: [
                  "\"Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.\" - Christian D. Larson",
                  "\"The only way to do great work is to love what you do.\" - Steve Jobs",
                  "\"Worrying does not empty tomorrow of its troubles, it empties today of its strength.\" - Corrie Ten Boom",
                  "\"Every experience in your life is being orchestrated to teach you something you need to know to move forward.\" - Brian Tracy",
                  "\"The best way out is always through.\" - Robert Frost"
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Card(
                        color: Colors.blue.shade100,
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                            i,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                            textScaleFactor: 1.3,
                          )),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationIndex,
        selectedItemColor: Colors.green,
        elevation: 30,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.green.shade100,
        onTap: (int index) {
          setState(() {
            navigationIndex = index;
            switch (navigationIndex) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tips()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Resources()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainMenu()),
                );
                break;
              case 4:
                Navigator.pop(context);
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Info",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps_rounded),
            label: "Tips",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart),
            label: "Resources",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "MainMenu",
            backgroundColor: Colors.white,
          ),
          // BottomNavigationBarItem(icon: Icon(Icons.cloud),label: "Loading",backgroundColor: Colors.blueAccent,),
        ],
      ),
    );
  }
}
