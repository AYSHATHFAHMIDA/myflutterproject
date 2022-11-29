import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home: GridviewCount(),));
class GridviewCount extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(
        'GridView.count',
        style: TextStyle(
            color: Colors.blueAccent,
            fontWeight:FontWeight.bold,
            fontSize: 30,
        ),
      ),
        centerTitle: true,
      ),
      body: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(20, (index)
          {
            return Padding(padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: NetworkImage("url"),fit: BoxFit.cover)
              ),
            ),);
          }),
      ),
    );
  }
}