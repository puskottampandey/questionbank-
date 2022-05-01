import 'package:flutter/material.dart';
import 'package:questionbank/Notificationscreen.dart';

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
            padding: EdgeInsets.only(),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue.shade900),
                child: Text(
                  "Questionbank",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.notification_add),
                  title: Text("Notification"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => NotificationScreen())));
                  }),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text("Mail"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Send Feedback "),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.rate_review),
                title: Text("Rate us "),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ));
  }
}
