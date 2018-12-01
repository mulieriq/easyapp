import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  ProductControl(this.addProduct);
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        addProduct({'title':'Cholate', 'image':'assets/img.jpg'});
      },
      child: new Text('Add New Icon'),
    );
  }
}
