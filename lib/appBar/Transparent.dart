import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: CustomAppBar(),));
}

class CustomAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.menu),
        ),
        title: const Text('CustomAppBar'),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.add,color: Colors.white)),
        ],
      ),
      body: Image.asset('assets/pink.jpg',width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
    );
  }
}