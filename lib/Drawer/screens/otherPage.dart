import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget{
  final String PageTextChanged;
  OtherPage(this.PageTextChanged);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PageTextChanged),
      ),
      body: Text(PageTextChanged),
    );
  }
}