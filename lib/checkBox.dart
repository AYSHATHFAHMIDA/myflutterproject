import 'package:flutter/material.dart';
import 'package:myflutterproject/alignment.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Checkbox'),
        ),
        body: MyStatefulWidget(),
      ),
    );
  }

}

class MyStatefulWidget extends StatefulWidget  {
  @override
  State<MyStatefulWidget> createState()=>_MyStatefulWidget();

}

class _MyStatefulWidget extends State<MyStatefulWidget>{
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Checkbox(
        checkColor: Colors.white,
        value: isChecked,
        onChanged: (bool? value){
          setState(() {
            isChecked=value!;
          });
      }
      ),
    );
  }
}

