import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

import 'package:mediabarapp/loginPage/loginPage2.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Registriraj se na MediaBar",
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
                        "Dobrodosli!",
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
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      height: 45.0,
                                      padding: EdgeInsets.only(
                                          left: 16.0, right: 16.0),
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
                                          icon: Icon(Icons.account_circle,
                                              color: Colors.black),
                                          hintText: "Ime i prezime",
                                          hintStyle: TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      height: 45.0,
                                      padding: EdgeInsets.only(
                                          left: 16.0, right: 16.0),
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
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          icon: Icon(Icons.mail,
                                              color: Colors.black),
                                          hintText: "E-mail adresa",
                                          hintStyle: TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      height: 45.0,
                                      padding: EdgeInsets.only(
                                          left: 16.0, right: 16.0),
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
                                    /*SizedBox(
                                      height: 10.0,
                                    ),*/
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      height: 45.0,
                                      padding: EdgeInsets.only(
                                          left: 16.0, right: 16.0),
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
                                          hintText: "Potvrda passworda",
                                          hintStyle: TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      "Izaberi vrstu korisničkog računa:",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        RaisedButton(
                                            onPressed: () {},
                                            color: Colors.amberAccent,
                                            splashColor: Colors.red,
                                            child: Column(
                                              children: [
                                                Icon(Icons.business_center),
                                                Text(
                                                  "Poslodavac",
                                                  style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    fontSize:15.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        RaisedButton(
                                          onPressed: () {},
                                          color: Colors.amberAccent,
                                          splashColor: Colors.red,
                                          child: Column(
                                            children: [
                                              Icon(Icons.work),
                                              Text(
                                                "Posloprimac",
                                                style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontSize:15.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        RaisedButton(
                                          onPressed: () {},
                                          color: Colors.amberAccent,
                                          splashColor: Colors.red,
                                          child: Column(
                                            children: [
                                              Icon(Icons.account_circle),
                                              Text(
                                                "Gost",
                                                style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontSize:15.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 30.0,),
                                    RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => LoginPage2()),
                                        );
                                      },
                                      splashColor: Colors.white,
                                      child: Text(
                                        "Nastavi registraciju",
                                        style: TextStyle(
                                          color: Colors.amberAccent,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      color: Colors.black,
                                    )
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
