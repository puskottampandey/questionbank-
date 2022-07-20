import 'package:flutter/material.dart';
import 'package:questionbank/Mail_screen.dart';
import 'package:questionbank/Send%20Feedback-screen.dart';
import 'package:questionbank/civil_subject.dart';
import 'package:questionbank/settings_screen.dart';
import 'package:questionbank/notification_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> courses = ["civil", "auto "];

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
            const Divider(
              height: 0,
            ),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text("Mail"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const MailScreen())));
              },
            ),
            const Divider(
              height: 0,
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
            const Divider(
              height: 0,
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
            const Divider(
              height: 0,
            ),
            ListTile(
              leading: const Icon(Icons.rate_review),
              title: const Text("Rate us "),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blue.shade900, width: 1),
                  borderRadius: BorderRadius.circular(14),
                ),
                title: Center(
                  child: Text(
                    "CIVIL ENGINEER",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue.shade900,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const CivilScreen())));
                },
              ),
            );
          }),
    );
  }
}
