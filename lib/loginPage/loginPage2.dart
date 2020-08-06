import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

import 'package:mediabarapp/homePage/homePage.dart';


class LoginPage2 extends StatefulWidget {
  @override
  _LoginPage2State createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/logoMediaBar.jpg',
              //fit: BoxFit.contain,
              //height: 32,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                color: Colors.amberAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Prijavi se",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Dobrodosli natrag!",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(100.0),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height / 1.5,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 30.0, right: 20.0, left: 20.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 1.5,
                                      height: 45.0,
                                      padding:
                                          EdgeInsets.only(left: 16.0, right: 16.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15.0),
                                          bottomLeft: Radius.circular(15.0),
                                        ),
                                        color: Colors.amberAccent[100],
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 5.0)
                                        ],
                                      ),
                                      child: TextField(
                                        cursorColor: Colors.amberAccent,
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          icon:
                                              Icon(Icons.mail, color: Colors.black),
                                          hintText: "E-mail adresa",
                                          hintStyle: TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 1.5,
                                      height: 45.0,
                                      padding:
                                          EdgeInsets.only(left: 16.0, right: 16.0),
                                      margin: EdgeInsets.only(top: 15.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15.0),
                                          bottomLeft: Radius.circular(15.0),
                                        ),
                                        color: Colors.amberAccent[100],
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 5.0)
                                        ],
                                      ),
                                      child: TextField(
                                        cursorColor: Colors.amberAccent,
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          icon: Icon(
                                            Icons.lock,
                                            color: Colors.black,
                                          ),
                                          suffixIcon: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.visibility_off),
                                            color: Colors.black,
                                          ),
                                          hintText: "Password",
                                          hintStyle: TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: FlatButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Zaboravljena lozinka ?",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => HomePage()),
                                        );
                                      },
                                      color: Colors.amberAccent,
                                      shape: StadiumBorder(),
                                      splashColor: Colors.amber,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(Icons.add_circle),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "Prijavi se",
                                            style: TextStyle(
                                              fontSize: 20.0,

                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                    ),
                                    GoogleSignInButton(onPressed: () {}, darkMode: true),
                                    SizedBox(height: 10.0),
                                    FacebookSignInButton(onPressed: () {}),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
