import 'package:flutter/material.dart';
void main()=>runApp(gridEx());
class gridEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('gridview example'),),
      body: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),

      ),
    );
  }
}