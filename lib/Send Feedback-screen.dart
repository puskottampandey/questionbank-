import 'package:flutter/material.dart';

class SendFeedback extends StatefulWidget {
  const SendFeedback({Key? key}) : super(key: key);

  @override
  State<SendFeedback> createState() => _SendFeedbackState();
}

class _SendFeedbackState extends State<SendFeedback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text("Send Feedback")),
      body: Container(),
    );
  }
}
