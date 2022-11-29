import 'package:flutter/material.dart';
class GridEx extends StatefulWidget{
  @override
  State<GridEx> createState() => _GridExState();
}

class _GridExState extends State<GridEx> {
  List<String> images=[
    '',
    '',
    '',
    '',
    '',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid()'),
      ),
      body: GridView(
        gridDelegate: null,
      ),
    );
  }
}