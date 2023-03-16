import 'package:flutter/material.dart';
import 'package:mindmate/anushka/eqtest.dart';
import 'package:mindmate/brijesh/chatbot/chatScreen.dart';

class BottonNav extends StatefulWidget {
  const BottonNav({Key? key}) : super(key: key);

  @override
  State<BottonNav> createState() => _BottonNavState();
}

class _BottonNavState extends State<BottonNav> {
  int navigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: navigationIndex,
      selectedItemColor: Colors.grey,
      elevation: 30,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.green,
      onTap: (int index) {
        setState(() {
          navigationIndex = index;
          switch (navigationIndex) {
            case 0:
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
                  (route) => (route.isFirst));
              break;
            case 1:
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                  (route) => (route.isFirst));
              break;
            case 2:
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                  (route) => (route.isFirst));
              break;
            case 3:
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
                  (route) => (route.isFirst));
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
    );
  }
}
