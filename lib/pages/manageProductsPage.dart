import 'package:flutter/material.dart';
import './creat.dart';
import './viewProducts.dart';
import './home.dart';

class ManageProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Product Management Page'),
          elevation: 0.7,
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.create),
                text: "Creat",
              ),
              new Tab(
                icon: new Icon(Icons.view_list),
                text: "View Products",
              )
            ],
          ),
        ),
        drawer: new Drawer(
          child: Container(
           
             color: Colors.black87,
                      child: new Column(
               
              children: <Widget>[
                AppBar(
                  title: new Text("Choose"),
                  automaticallyImplyLeading: false,
                ),
                ListTile(
                  
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Home())),
                  title: new Text("All Product"),
                )
              ],
            ),
          ),
        ),
        body: new TabBarView(
          children: <Widget>[Creat(), ViewProducts()],
        ),
      ),
    );
  }
}
