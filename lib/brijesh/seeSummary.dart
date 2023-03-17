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
