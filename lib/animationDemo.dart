import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home: MyPage(),));
class MyPage extends StatefulWidget{
  @override
  MyStatefulPage createState() =>MyStatefulPage();

}

class MyStatefulPage extends State with TickerProviderStateMixin{
  late AnimationController animationController;
  void initState(){
    super.initState();
    animationController=AnimationController(
        vsync: this,
      duration: const Duration(seconds: 5),
    );
    animationController.repeat();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context,Widget? child){
          return Transform.rotate(angle: animationController.value*4,
            child: const Center(
              child: Icon(
                Icons.ac_unit,
                size: 80,
                color: Colors.yellow,
              ),
            ),
          );

        },

      ),
    );
  }
}