import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imgUrl;

  ProductPage({this.title, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Card(
          color: Colors.black87,
          child: Column(
            children: <Widget>[
              new Image.asset(imgUrl),
              new Text(title),
              RaisedButton(
                onPressed: () {
                  Navigator.pop<bool>(context);
                },
                child: new Text("Delete"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
