import 'package:flutter/material.dart';
import './dummy_data.dart';

class ProductListScreen extends StatelessWidget {
  void _gotoSingle(context,productId){
    Navigator.of(context).pushNamed('single_product',arguments: productId);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('product list screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: dummyProduct.map((product){
          return TextButton(
              onPressed: ()=>_gotoSingle(context, product['id']),
              child: Text(product['name']));
        }).toList(),
      ),
    );
  }
}




