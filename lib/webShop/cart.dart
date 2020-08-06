import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
      body: Center(
        child: Text('Kosarica:'),
      ),
    );
  }
}
