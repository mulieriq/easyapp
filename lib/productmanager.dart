import 'package:flutter/material.dart';
import './products.dart';
import './productControl.dart';

class ProductManger extends StatefulWidget {
  final Map<String, String> startingProduct;

  ProductManger(this.startingProduct);

  @override
  _ProductMangerState createState() => _ProductMangerState();
}

class _ProductMangerState extends State<ProductManger> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    // TODO: implement initState
    _products.add(widget.startingProduct);
    print(widget.startingProduct);
    super.initState();
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void deleteProduct(index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(5.0),
          child: ProductControl(_addProduct),
        ),
        Products(products:_products, deleteProduct: deleteProduct),
      ],
    );
  }
}
