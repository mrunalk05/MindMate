import 'package:flutter/material.dart';
import 'package:mindmate/anushka/eqtest.dart';
import 'package:mindmate/brijesh/chatbot/chatScreen.dart';
import 'package:mindmate/brijesh/homeScreen.dart';
import 'package:mindmate/brijesh/tips.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'doctor.dart';
import 'mainMenu.dart';

class Resources extends StatefulWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  @override
  Widget build(BuildContext context) {
    int navigationIndex = 2;
    return Scaffold(
      appBar: AppBar(
        title: const Text("MindMate"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 1)),
                  child: Center(child: Text("Videos"))),
              onTap: () => {
                launchUrlString(
                    "https://www.youtube.com/results?search_query=mental+health",
                    mode: LaunchMode.inAppWebView)
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 1)),
                  height: 100,
                  child: Center(
                    child: Text("Music"),
                  )),
              onTap: () => {
                launchUrlString(
                    "https://open.spotify.com/playlist/37i9dQZF1DX4sWSpwq3LiO",
                    mode: LaunchMode.inAppWebView)
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 1)),
                  height: 100,
                  child: const Center(
                    child: Text("Motivational Stories"),
                  )),
              onTap: () => {
                launchUrlString(
                    "https://medium.com/search?q=motivational+stories",
                    mode: LaunchMode.inAppWebView)
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 1)),
                  height: 100,
                  child: const Center(
                    child: Text("Specialized Doctors"),
                  )),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ))
              },
            ),
          ),
        ],
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
                  MaterialPageRoute(builder: (context) => const MainMenu()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Resources()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Tips()),
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
            icon: Icon(Icons.person),
            label: "MainMenu",
            backgroundColor: Colors.white,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart),
            label: "Resources",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps_rounded),
            label: "Tips",
            backgroundColor: Colors.white,
          ),
          // BottomNavigationBarItem(icon: Icon(Icons.cloud),label: "Loading",backgroundColor: Colors.blueAccent,),
        ],
      ),
    );
  }
}
