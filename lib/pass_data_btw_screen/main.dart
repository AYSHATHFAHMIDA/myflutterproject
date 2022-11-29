import 'package:flutter/material.dart';
import './product_list_screen.dart';
import './singleproductscreen.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListScreen(),
      routes: {
        'single_product':(context)=>SingleProductScreen(),
      },
    );
  }

}