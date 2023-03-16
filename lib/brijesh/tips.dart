import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../anushka/eqtest.dart';
// import '../utkarsha/bottomNavigationbar.dart';
import 'chatbot/chatScreen.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  int navigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tips"),
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage("assets/back.jpg"), fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
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
            label: "ChatBot",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart),
            label: "EQ Test",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.white,
          ),
          // BottomNavigationBarItem(icon: Icon(Icons.cloud),label: "Loading",backgroundColor: Colors.blueAccent,),
        ],
      ),
    );
  }
}
