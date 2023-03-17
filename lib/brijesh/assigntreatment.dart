import 'package:flutter/material.dart';

class LongAnswerTextField extends StatelessWidget {
  final String labelText;

  LongAnswerTextField({required this.labelText});

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(labelText, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 8),
              TextField(
                controller: _textEditingController,
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Submit button action
                  String answer = _textEditingController.text;
                  // Do something with the submitted answer
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
