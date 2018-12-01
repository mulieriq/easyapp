import 'package:easyapp/pages/product.dart';
import 'package:easyapp/pages/viewProducts.dart';
import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/manageProductsPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyApp',
      theme: new ThemeData(
          primaryColor: Colors.black, accentColor: Colors.blueAccent),
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        '/admin': (BuildContext context) => ManageProductsPage(),
        '/product': (BuildContext context) => ProductPage(),
        '/allproducts': (BuildContext context) => ViewProducts()
      },
      onGenerateRoute: null,
      onUnknownRoute: null,
    );
  }
}
