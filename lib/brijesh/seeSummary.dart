import 'package:flutter/material.dart';
import 'package:mindmate/apiCredentials/apiTokens.dart';

class SeeSummary extends StatefulWidget {
  const SeeSummary({Key? key}) : super(key: key);

  @override
  State<SeeSummary> createState() => _SeeSummaryState();
}

class _SeeSummaryState extends State<SeeSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("See All Summaries"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //create a card for title
            // put the title in the card
            const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Summaries"),
              ),
            ),
            // make a list of summaries
            // create a child with a card
            // put the summary in the card
            for (String i in summary) ...[
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(i),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
