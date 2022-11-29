import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: GridviewBuilderEx(),));
}
class GridviewBuilderEx extends StatelessWidget{

  var images=[
    "assets/lavender.jpg",
    'assets/orange.jpg',
    'assets/pink.jpg',
    'assets/red.jpg',
    'assets/rose.jpg',
    'assets/yellow.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridviewBuilder'),),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 6,
        itemBuilder: (context, index){
          return Image.asset(images[index],fit: BoxFit.cover,);
        },
        padding: EdgeInsets.all(20),
        shrinkWrap: true,
      ),
    );
  }
}