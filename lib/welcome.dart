import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Welcome(),));
}
class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:   const [
            Image(image: AssetImage('assets/images/chat.png')),
            Text("welcome",style: TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }

}