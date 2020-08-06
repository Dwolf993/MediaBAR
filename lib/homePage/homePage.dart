import 'package:flutter/material.dart';
import 'package:mediabarapp/homePage/drawerCode.dart';

import 'package:mediabarapp/navigationBar/navigationBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Image.asset(
          'assets/logoMediaBar.jpg',
          fit: BoxFit.contain,
          height: 32,
        ),
        ]
      ),
    ),
      drawer: DrawerCode(

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: []

            ),
          ],
        ),
      ),
    );
  }
}
