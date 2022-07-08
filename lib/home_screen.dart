import 'package:flutter/material.dart';
import 'package:questionbank/Send%20Feedback-screen.dart';

import 'package:questionbank/settings_screen.dart';
import 'package:questionbank/notification_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Colors.blue.shade900),
        title: const Text("Questionbank"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue.shade900),
              child: const Text(
                "Questionbank",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            ListTile(
                leading: const Icon(Icons.notification_add),
                title: const Text("Notification"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const NotificationScreen())));
                }),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text("Mail"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Setting"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const SettingScreen())));
              },
            ),
            ListTile(
              leading: const Icon(Icons.send),
              title: const Text("Send Feedback "),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const SendFeedback())));
              },
            ),
            ListTile(
              leading: const Icon(Icons.rate_review),
              title: const Text("Rate us "),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        Container(
            decoration: BoxDecoration(color: Colors.blue.shade900),
            padding: const EdgeInsets.all(8),
            height: 50,
            child: const Center(
                child: Text(
              "civil ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )))
      ]),
    );
  }
}
