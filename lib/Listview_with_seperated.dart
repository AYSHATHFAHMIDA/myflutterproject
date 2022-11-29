import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home: ListviewWithSeperatedEx(),));
class ListviewWithSeperatedEx extends StatelessWidget{
  var Details=<String>['text1','text2','text3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list view with seperated'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context,index){
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(Details[index]),
              ),
              color: Colors.amber,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),

            );
          },
          separatorBuilder: (BuildContext context,index){
            return SizedBox(height: 5,);
          },
          itemCount: Details.length),
    );
  }

}