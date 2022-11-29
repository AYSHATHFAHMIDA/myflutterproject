import 'dart:async';

import 'package:flutter/material.dart';

import 'login_with_validation.dart';




void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash  extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginWithValidation()));
    });
  }
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
    body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/2088170/pexels-photo-2088170.jpeg?cs=srgb&dl=pexels-eberhard-grossgasteiger-2088170.jpg&fm=jpg&_gl=1*te38cu*_ga*MTUxMDYxOTk1MS4xNjY3Mjc3NTU0*_ga_8JE65Q40S6*MTY2NzQ3MjcyNi4yLjEuMTY2NzQ3Mjc0My4wLjAuMA..'
              ),
            fit: BoxFit.fill,
          ),

        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   Icons.account_circle,
              //   color: Colors.pink,
              //   size: 90,
              // ),
              Image.asset('assets/images/chat.png',width: 50,height: 50,),
              const Text('MYAPP',style: TextStyle(fontSize: 30,color: Colors.pink,fontWeight: FontWeight.bold)),
            ],
          ),
        ),

    ),
   );
  }
}