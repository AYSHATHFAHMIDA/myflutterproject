import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Routes',
    initialRoute: '/',
    routes: {
      '/':(context)=>firstRoute(),
      '/second':(context)=>secoundRoute(),
      '/third':(context)=>thirdRoute(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
class firstRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child:const Text('to second'),
                onPressed: (){
                Navigator.pushNamed(context, '/second');
                },
                 ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/third');
                },
                child: const Text('to third')),
          ],
        ),
      ),

    );
  }

}
class secoundRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('go back to launch'),
        ),
      ),
    );

  }

}
class thirdRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('third page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(' go back to launch'),

        ),
      ),
    );
  }

}