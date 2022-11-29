import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: TabbarEx(),
  debugShowCheckedModeBanner: false,));
}
class TabbarEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 4,
     child: Scaffold(
       appBar: AppBar(
         title: const Text('MyTab'),
         actions: [
           Icon(Icons.search),
           PopupMenuButton(
               itemBuilder:(context){
                 return[
                   const PopupMenuItem(child: Text('settings')),
                   const PopupMenuItem(child: Text('Help')),
                   const PopupMenuItem(child: Text("About")),
                   const PopupMenuItem(child: Text('Version'))
                 ];
               }
           )
         ],
         // backgroundColor: Color(0xfffcd56),
         bottom: const TabBar(
           indicatorSize: TabBarIndicatorSize.tab,
             tabs: [
               Tab(

                 icon: Icon(Icons.camera_alt),
               ),
               Tab(
                 icon: Icon(Icons.home_filled),
                 text: 'home',
               ),
               Tab(
                 icon: Icon(Icons.account_box_outlined),
                 text: 'Account',
               ),
               Tab(
                 icon: Icon(Icons.alarm),
                 text: 'alarm',
               )
             ],
         ),
       ),
       body: const TabBarView(
         children: [
           Center(
             child: Icon(Icons.camera_alt),
           ),
           Center(
             child: Icon(Icons.home),
           ),
           Center(
             child: Icon(Icons.account_box_outlined),
           ),
          Center(
            child: Icon(Icons.alarm),
          )
         ],
       ),
     ),

   );
  }
}