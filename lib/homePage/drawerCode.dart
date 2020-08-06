import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mediabarapp/profilePage/profilePage.dart';
import 'package:mediabarapp/webShop/webShop.dart';

class DrawerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              children: <Widget>[
                Flexible(
                  child: Container(
                    width: 200,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/logoMediaBar.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                Text(
                  "Media Bar",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  "Klikaj kao car!",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person_outline,
              color: Colors.blue,
            ),
            title: Text("Profil"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.purple,
            ),
            title: Text("Novosti"),
            onTap: () {
              print("Novosti");
              /* Navigator.pop(context);
              SystemNavigator.pop();*/
            },
          ),
          ListTile(
            leading: Icon(
              Icons.work,
              color: Colors.red,
            ),
            title: Text("Djelatnosti"),
            onTap: () {
              print("Djelatnosti");
              /* Navigator.pop(context);
              SystemNavigator.pop();*/
            },
          ),
          ListTile(
            leading: Icon(
              Icons.lightbulb_outline,
              color: Colors.lightGreenAccent,
            ),
            title: Text("Edukacije"),
            onTap: () {
              print("Edukacije");
              /* Navigator.pop(context);
              SystemNavigator.pop();*/
            },
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.yellow,
            ),
            title: Text("Web shop"),
            onTap: () {
              print("Web shop");
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => WebShop()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.group,
              color: Colors.lightBlue,
            ),
            title: Text("O nama"),
            onTap: () {
              print("O nama");
              /* Navigator.pop(context);
              SystemNavigator.pop();*/
            },
          ),
          ListTile(
            leading: Icon(
              Icons.question_answer,
              color: Colors.deepOrange,
            ),
            title: Text("FAQ"),
            onTap: () {
              print("FAQ");
              /* Navigator.pop(context);
              SystemNavigator.pop();*/
            },
          ),
          ListTile(
            leading:
                Icon(Icons.settings_applications, color: Colors.pinkAccent),
            title: Text("Postavke"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
              print("Go to Settings");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            title: Text("Logout"),
            onTap: () {
              print("Logout Users");
              Navigator.pop(context);
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}
