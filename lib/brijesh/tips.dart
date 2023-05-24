import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mindmate/brijesh/homeScreen.dart';
import 'package:mindmate/brijesh/mainMenu.dart';
import 'package:mindmate/brijesh/resources.dart';

import '../anushka/eqtest.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  int navigationIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tips"),
      ),
      body: Container(
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage("assets/back.jpg"),
          //   fit: BoxFit.fill,
          // ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Image(image: AssetImage("assets/1.png")),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Get enough sleep: Adequate sleep is essential for both physical and mental health. Try to get at least 7-8 hours of sleep every night.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Image(image: AssetImage("assets/2.jpg")),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Exercise regularly: Regular exercise can help reduce stress and improve mood. Find an activity you enjoy and make it a regular part of your routine.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Image(image: AssetImage("assets/3.jpg")),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Practice mindfulness and relaxation techniques: Activities such as meditation, deep breathing, and yoga can help reduce stress and promote relaxation.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Image(image: AssetImage("assets/4.jpg")),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Manage your time effectively: Make a to-do list, prioritize your tasks, and schedule your day to manage your time efficiently.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Image(image: AssetImage("assets/5.jfif.jpg")),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Maintain a healthy diet: Eating a balanced and nutritious diet can help improve mood and energy levels, reducing stress.",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationIndex,
        selectedItemColor: Colors.green,
        elevation: 30,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.green.shade100,
        onTap

            : (int index) {
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
        ],
      ),
    );
  }
}




// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:mindmate/brijesh/homeScreen.dart';
// import 'package:mindmate/brijesh/mainMenu.dart';
// import 'package:mindmate/brijesh/resources.dart';
//
// import '../anushka/eqtest.dart';
// // import '../utkarsha/bottomNavigationbar.dart';
// import 'chatbot/chatScreen.dart';
//
// class Tips extends StatefulWidget {
//   const Tips({Key? key}) : super(key: key);
//
//   @override
//   State<Tips> createState() => _TipsState();
// }
//
// class _TipsState extends State<Tips> {
//   int navigationIndex = 3;
//   @override
//   Widget build(BuildContext context) {
//     // var tipList = [
//     //   "Get enough sleep: Adequate sleep is essential for both physical and mental health. Try to get at least 7-8 hours of sleep every night.",
//     //   "Exercise regularly: Regular exercise can help reduce stress and improve mood. Find an activity you enjoy and make it a regular part of your routine.",
//     //   "Practice mindfulness and relaxation techniques: Activities such as meditation, deep breathing, and yoga can help reduce stress and promote relaxation.",
//     //   "Manage your time effectively: Make a to-do list, prioritize your tasks, and schedule your day to manage your time efficiently.",
//     //   "Maintain a healthy diet: Eating a balanced and nutritious diet can help improve mood and energy levels, reducing stress.",
//     //   "Take breaks and prioritize self-care: It's essential to take regular breaks and prioritize self-care activities such as taking a bath, reading a book, or spending time with loved ones."
//     // ];
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Tips"),
//       ),
//       body: Container(
//         // decoration: const BoxDecoration(
//         //     image: DecorationImage(
//         //         image: AssetImage("assets/back.jpg"), fit: BoxFit.fill)),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: const [
//                         Image(image: AssetImage("assets/1.png")),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text(
//                               "Get enough sleep: Adequate sleep is essential for both physical and mental health. Try to get at least 7-8 hours of sleep every night."),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: const [
//                         Image(image: AssetImage("assets/2.jpg")),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text(
//                             "Exercise regularly: Regular exercise can help reduce stress and improve mood. Find an activity you enjoy and make it a regular part of your routine.",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: const [
//                         Image(image: AssetImage("assets/3.jpg")),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text(
//                             "Practice mindfulness and relaxation techniques: Activities such as meditation, deep breathing, and yoga can help reduce stress and promote relaxation.",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: const [
//                         Image(image: AssetImage("assets/4.jpg")),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text(
//                             "Manage your time effectively: Make a to-do list, prioritize your tasks, and schedule your day to manage your time efficiently.",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: const [
//                         Image(image: AssetImage("assets/5.jfif.jpg")),
//                         Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text(
//                             "Maintain a healthy diet: Eating a balanced and nutritious diet can help improve mood and energy levels, reducing stress.",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 // Card(
//                 //   child: Padding(
//                 //     padding: const EdgeInsets.all(8.0),
//                 //     child: Column(
//                 //       children: const [
//                 //         Image(image: AssetImage("assets/6.jpg"), width: 300),
//                 //         Padding(
//                 //           padding: EdgeInsets.all(8.0),
//                 //           child: Text(
//                 //               "Take breaks and prioritize self-care: It's essential to take regular breaks and prioritize self-care activities such as taking a bath, reading a book, or spending time with loved ones."),
//                 //         ),
//                 //       ],
//                 //     ),
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: navigationIndex,
//         selectedItemColor: Colors.green,
//         elevation: 30,
//         type: BottomNavigationBarType.fixed,
//         unselectedItemColor: Colors.green.shade100,
//         onTap: (int index) {
//           setState(() {
//             navigationIndex = index;
//             switch (navigationIndex) {
//               case 0:
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const HomeScreen()),
//                 );
//                 break;
//               case 1:
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const MainMenu()),
//                 );
//                 break;
//               case 2:
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Resources()),
//                 );
//                 break;
//               case 3:
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const Tips()),
//                 );
//                 break;
//               case 4:
//                 Navigator.pop(context);
//             }
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Info",
//             backgroundColor: Colors.white,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "MainMenu",
//             backgroundColor: Colors.white,
//           ),
//
//           BottomNavigationBarItem(
//             icon: Icon(Icons.monitor_heart),
//             label: "Resources",
//             backgroundColor: Colors.white,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.apps_rounded),
//             label: "Tips",
//             backgroundColor: Colors.white,
//           ),
//           // BottomNavigationBarItem(icon: Icon(Icons.cloud),label: "Loading",backgroundColor: Colors.blueAccent,),
//         ],
//       ),
//     );
//   }
// }
