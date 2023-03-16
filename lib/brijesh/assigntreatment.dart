import 'package:flutter/material.dart';

class LongAnswerTextField extends StatelessWidget {
  final String labelText;

  LongAnswerTextField({required this.labelText});

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText, style: TextStyle(fontSize: 16)),
        SizedBox(height: 8),
        TextField(
          controller: _textEditingController,
          maxLines: null,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Submit button action
            String answer = _textEditingController.text;
            // Do something with the submitted answer
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}
