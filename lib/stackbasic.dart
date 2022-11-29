import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: StackEx(),),);
}
class StackEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('stackbasics'),
      ),
      body: Stack(
        children: [
          Container(
            width: 400,
            height: 400,
            color: Colors.yellow,
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.green,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}