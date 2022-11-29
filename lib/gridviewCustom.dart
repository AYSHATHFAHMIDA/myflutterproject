import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: GridviewCustom(),));
}
class GridviewCustom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('grid view custom'),),
      body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
          mainAxisSpacing: 10),
          childrenDelegate: SliverChildBuilderDelegate((BuildContext,index){
            return Image.asset('assets/lavender.jpg',width: 50,height: 50,fit: BoxFit.cover,
            );
          },childCount: 6),
          padding: const EdgeInsets.all(20),
          shrinkWrap: true
      ),
    );
  }
}
