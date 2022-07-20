import 'package:flutter/material.dart';

class CivilScreen extends StatefulWidget {
  const CivilScreen({Key? key}) : super(key: key);

  @override
  State<CivilScreen> createState() => _CivilScreenState();
}

class _CivilScreenState extends State<CivilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("subject"),
      ),
    );
  }
}
