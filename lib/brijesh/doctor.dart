import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> _items =
      List<String>.generate(20, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meet Our Experts',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meet Our Experts'),
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "The Owlish Mind",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Address : T-6, Third floor, S square, Regular Corner complex, 100 ft circle, Kolhapur - Sangli Hwy, Sangli, Maharashtra 416416' +
                          '\nContact No. : 073855 07338',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Ayuda Mind Care",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Address : Wadekar Building, opposite Dinanath Natyagruh, Ganapati Peth, Sangli, Maharashtra 416416' +
                          'Contact No. : 083297 44020',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Gaikwad Hospital",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Address : VH3F+5G4, Dhanwantari Complex, opp. District General Hospital, Sangli, Sangli, Maharashtra 416416' +
                          'Contact No. : 0233 237 6402',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
