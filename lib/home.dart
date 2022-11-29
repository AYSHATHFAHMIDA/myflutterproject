// import 'package:flutter/material.dart';
//
// class MainScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:  const Text('list page'),
//       ),
//       body: ListView(
//         children:  const [
//           SizedBox(height: 20,),
//           Center(
//             child: Text(
//                 'list of fruits',
//                 style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(height: 20,),
//           ListTile(
//             title:Text('Fruit 1'),
//             subtitle:Text('fruit are yummy'),
//             leading:
//           )
//         ],
//       ),
//     );
//   }
// }

 import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child:  Column(
          children: const [
            Image(image: AssetImage("assets/images/chat.png",),width: 50,height: 50,),
            Text(
              'welcome to my world',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent
              ),
            ),
          ],
        ),
      ),
    );
  }
}