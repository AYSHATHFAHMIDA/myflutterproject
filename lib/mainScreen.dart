import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
          home: mainScreen(),
      ));
}
class mainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text('List View'),
       ),
      body: Wrap(
        children: const [
          Center(child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('List of fruits',style: TextStyle(fontStyle: FontStyle.normal,fontSize: 20,fontWeight: FontWeight.bold),),
          )),
          Card(child: ListTile(title: Text('Apple'),leading: Image(image: AssetImage('assets/images/apple.jpg'),width: 30,),trailing: Icon(Icons.navigate_next),)),
          SizedBox(
            height: 10,
            width: 10,

          ),
          ListTile(title: Text('Mango'),leading: Image(image: AssetImage('assets/images/mango.jpg'),width: 30,),trailing: Icon(Icons.navigate_next)),SizedBox(
            height: 10,
          ),
          ListTile(title: Text('orange'),leading: Image(image: AssetImage('assets/images/orangefruit.jpg'),width: 30,),trailing: Icon(Icons.navigate_next)),
          SizedBox(
            height: 10,
          ),
          ListTile(title: Text('banana'),leading: Image(image: AssetImage('assets/images/banana.jpg'),width: 30,),trailing: Icon(Icons.navigate_next)),
          SizedBox(
            height: 10,
          ),
          ListTile(title: Text('grapes'),leading: Image(image: AssetImage('assets/images/grapes.jpg'),width: 30,),trailing: Icon(Icons.navigate_next)),


        ],
      ),
    );
  }

}