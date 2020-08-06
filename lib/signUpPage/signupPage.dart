import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logoMediaBar.jpg',
                fit: BoxFit.contain,
                height: 32,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
              )
            ],
          ),
          bottom: TabBar(
            isScrollable: false,

            tabs: choices.map((Choice choice) {
              return Tab(
                text: choice.title,
                icon: Icon(choice.icon),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: choices.map((Choice choice) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ChoiceCard(choice: choice),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'B2B', icon: Icons.business_center),
  const Choice(title: 'B2C', icon: Icons.account_box),
  const Choice(title: 'Korsinik', icon: Icons.group),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline6;
    return Card(
      color: Colors.white,
      child:
         Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 20.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
            TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "Ime firme/obrta")
            ),
            TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "Adresa")
            ),
            TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "OIB"),
            ),
            TextFormField(
                keyboardType: TextInputType.text,
               decoration: InputDecoration(labelText: "Ime i Prezime odgovorne osobe")
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Broj mobitela"),
            ),

          ],
        ),
      );
  }

}
