import 'package:flutter/material.dart';
import 'package:mediabarapp/homePage/drawerCode.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset(
            'assets/logoMediaBar.jpg',
            fit: BoxFit.contain,
            height: 32,
          ),
        ]),
      ),
      drawer: DrawerCode(),
      backgroundColor: Colors.grey[900],
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/logoMediaBar.jpg'),
                  radius: 50.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.amberAccent,
              ),
              Text(
                'IME I PREZIME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "MediaBar",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Vrsta racuna:',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Poslodavac",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.amberAccent,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'mediabar@gmail.com',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[400],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
