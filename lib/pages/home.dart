import 'package:flutter/material.dart';
import '../productmanager.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
        appBar: new AppBar(
          title: new Text('EasyApp'),
        ),
        drawer: new Drawer(
          child: new Column(
            children: <Widget>[
              AppBar(
                title: new Text("Choose"),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                onTap: () => Navigator.pushReplacementNamed(context, '/admin'),
                title: new Text("New Product"),
              )
            ],
          ),
        ),
        body: ProductManger({'title': 'Fruity', 'image': 'assets/img.jpg'}));
  }
}
