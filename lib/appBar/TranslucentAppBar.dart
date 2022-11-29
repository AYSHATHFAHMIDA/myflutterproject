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
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("CustomAppBar"),
        backgroundColor: Colors.purple.withOpacity(.5),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.settings))
        ],
      ),
      body: Image.asset('assets/pink.jpg',width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
    );
  }
}