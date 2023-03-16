import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expert's voice"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding:
                EdgeInsets.all(8.0), // Set the padding around the first label
            child: Text(
              'MindMate brings you a Suggestion', // The text of the first label
              style: TextStyle(
                fontSize:
                    24.0, // Set the font size to be bigger than the second label
                fontWeight: FontWeight.bold, // Set the font weight to be bold
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.all(8.0), // Set the padding around the second label
            child: Text(
              'Suggestion Text', // The text of the second label
              style: TextStyle(fontSize: 16.0), // Optional styling for the text
            ),
          ),
        ],
      ),
    );
  }
}
