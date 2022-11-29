import 'package:flutter/material.dart';
import './dummy_data.dart';

class SingleProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute
        .of(context)
        ?.settings
        .arguments;
    final product = dummyProduct.firstWhere((element) =>
    element['id'] == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child:Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [

                Text(
                  "Name:${product['name']}",
                  style: TextStyle(fontSize: 30,color: Colors.black),
                ),
                Text(
                  'Price:${product['price']}',
                  style: TextStyle(fontSize: 20, color: Colors.redAccent),
                ),
                Text(
                  'Description:${product['description']}',
                  style: TextStyle(fontSize: 15,color: Colors.black),
                ),
                Image.asset(product['image']),
              ],
            ),
          ),
        ),
      ),

    );
  }

}