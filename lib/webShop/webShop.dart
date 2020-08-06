import 'package:flutter/material.dart';

import 'package:mediabarapp/homePage/drawerCode.dart';
import 'package:mediabarapp/webShop/cart.dart';
import 'package:mediabarapp/webShop/shopModel.dart';
import 'package:mediabarapp/webShop/webShop.dart';

class WebShop extends StatefulWidget {
  @override
  _WebShopState createState() => _WebShopState();
}

class _WebShopState extends State<WebShop> {
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
          SizedBox(
            width: 100,
          ),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.amberAccent,
              ),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              }),
        ]),
      ),
      drawer: DrawerCode(),
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(

            ),
          ),
        ],
      ),
    );
    List <ShopModel> shopList = [];
    @override
    super.initState();
    shopList = List.generate
    (index) => ShopModel()
  }

