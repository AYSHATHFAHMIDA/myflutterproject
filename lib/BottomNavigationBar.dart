import 'package:flutter/material.dart';
void main()=>runApp(BottomNav());
class BottomNav extends StatefulWidget{

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex=0;
  List bodies=<Widget>[
    const Card(
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Text('Chat Screen'),
      ),
    ),
    const Card(
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Text('Images'),
      ),
    ),
    const Card(
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Text('Camera'),
      ),
    ),
    const Card(
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Text('Profile'),
      ),
    ),
  ];
  onItemTapped(int index){
    setState(() {
      selectedIndex=index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.teal,
      ),
      home: Scaffold(
         appBar: AppBar(
           title: const Text('bottom bar'),
         ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.teal,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white70,
          items:  const [
            BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'chat'),
            BottomNavigationBarItem(icon: Icon(Icons.image),label: 'images'),
            BottomNavigationBarItem(icon: Icon(Icons.camera_alt),label: 'camera'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'account'),
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,

        ),
        body:  Center(
          child: bodies.elementAt(selectedIndex),
        ),
      ),
    );
  }
}