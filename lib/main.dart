import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './signUpPage/signUp.dart';
import './loginPage/loginPage2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
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
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'MediaBAR',
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Card(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            elevation: 2.0,
            color: Colors.grey[900],
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dobrodosli!!",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Text(
            "MediaBar, klikaj kao car!",
            style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 170.0,
          ),
          RaisedButton(
            color: Colors.amberAccent,
            onPressed: () {
              Navigator.push(
                context,
                  MaterialPageRoute(builder: (context) => LoginPage2()),
              );
            },
            child: Text("Prijava"),
          ),
          SizedBox(
            height: 30.0,
          ),
          RaisedButton(
            color: Colors.amberAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: Text("Registracija"),
          ),
        ],
      ),
    );
  }
}
