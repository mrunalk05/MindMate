import 'package:flutter/material.dart';

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
                  MaterialPageRoute(builder: (context) => const AppBody()),
                  (route) => (route.isFirst));
              break;
            case 1:
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const AllApps()),
                  (route) => (route.isFirst));
              break;
            case 2:
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => ShowActivities()),
                  (route) => (route.isFirst));
              break;
            case 3:
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
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
          label: "Home",
          backgroundColor: primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.apps_rounded),
          label: "All APPS",
          backgroundColor: primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.monitor_heart),
          label: "Activities",
          backgroundColor: primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
          backgroundColor: primaryColor,
        ),
        // BottomNavigationBarItem(icon: Icon(Icons.cloud),label: "Loading",backgroundColor: Colors.blueAccent,),
      ],
    );
  }
}
