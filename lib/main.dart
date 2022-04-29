import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Homepage())));
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade900,
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

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
                onTap: (){
                  Navigator.push(context,)
                },
              ),
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
