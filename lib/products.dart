import 'package:easyapp/pages/product.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;
  Products({this.products, this.deleteProduct});
  Widget _itembuild(context, int index) {
    return Card(
      color: Colors.black87,
      child: new Column(
        children: <Widget>[
          new Image.asset(products[index]['image']),
          new Text(products[index]['title']),
          new ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlatButton(
                child: new Text('Details', style: new TextStyle(
                   color: Colors.white
                ),),
                onPressed: () => Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(
                            title: products[index]['title'],
                            imgUrl: products[index]['image']),
                      ),
                    ).then((bool value) {
                      if (value) {
                        deleteProduct(index);
                      }
                    }),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: _itembuild,
      ),
    );
  }
}
