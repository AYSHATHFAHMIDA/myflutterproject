import 'package:flutter/material.dart';
import 'package:myflutterproject/Drawer/screens/homePage.dart';
void main(){
  runApp((MyApp()));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test App",
      home: HomePage(),
    );
  }

}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup()async{
      return await showDialog(
          context: context,
          builder: (context)=> AlertDialog(
            title: const Text('Exit App'),
            content: const Text('do you want to exit'),
            actions: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop(false);
                  }, child: const Text('No')
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop(true);
                  },
                  child: const Text('yes')
              ),
            ],
          )
      )??false;
    }
    return WillPopScope(
      onWillPop: showExitPopup,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('override back button'),
            backgroundColor: Colors.redAccent,
          ),
          body: const Center(
            child: Text('override back buton'),
          ),
        ),);

  }
}