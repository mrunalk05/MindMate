import 'package:flutter/material.dart';
import 'package:mindmate/anushka/eqtest.dart';
import 'package:mindmate/brijesh/assigntreatment.dart';
import 'package:mindmate/brijesh/chatbot/chatScreen.dart';
import 'package:mindmate/brijesh/homeScreen.dart';
import 'package:mindmate/brijesh/resources.dart';
import 'package:mindmate/brijesh/seeSummary.dart';
import 'package:mindmate/brijesh/suggestions.dart';
import 'package:mindmate/brijesh/tips.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    int navigationIndex = 1;
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
                  child: const Center(child: Text("Chat With AI"))),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(),
                    ))
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
                    child: Text("EQ Test : Get Your Emotional Score"),
                  )),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(),
                    ))
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
                    child: Text("Suggestion Box"),
                  )),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWidget(),
                    ))
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
                    child: Text("See All Summaries"),
                  )),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SeeSummary(),
                    ))
              },
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: ListTile(
          //     title: Container(
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.all(Radius.circular(10)),
          //             border: Border.all(width: 1)),
          //         height: 100,
          //         child: const Center(
          //           child: Text("Assign Treatement"),
          //         )),
          //     onTap: () => {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => LongAnswerTextField(
          //               labelText: 'your suggestion',
          //             ),
          //           ))
          //     },
          //   ),
          // ),
          // ElevatedButton(
          //     onPressed: () => {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                 builder: (context) => ChatScreen(),
          //               ))
          //         },
          //     child: Text("data"))
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
