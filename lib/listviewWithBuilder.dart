import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp
    (home: List_with_builder(),
  ));
}
class List_with_builder extends StatelessWidget{

  var data=<String>['data1','data2','data 3'];
  var code=<int>[500,600,700];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list_with_builder'),

      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext cntxt ,int index){
            return Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.pink[code[index]],
              ),
              height: 50,
              child: Center(child: Text(data[index])),
            );
          }),

    );
  }
}