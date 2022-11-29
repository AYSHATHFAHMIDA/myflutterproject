import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutterproject/Drawer/screens/aboutPage.dart';
import 'package:myflutterproject/Drawer/screens/otherPage.dart';

class Homepagedraw extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePagedraw();
  }
}

class _HomePagedraw extends State<Homepagedraw>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NAVIGATION DRAWER"),
      ),
      endDrawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: const Text("Ayshath Fahmida"),
                  accountEmail: const Text('ayshafahmi26@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fbackground&psig=AOvVaw0iY7W7KlYbxPfR9Sn373eH&ust=1667996564942000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCJi1u8fJnvsCFQAAAAAdAAAAABAE'),
                  ),
                  onTap: ()=>print("currentuser"),
                ),
                // otherAccountsPictures: const [
                //   CircleAvatar(
                //     backgroundImage: NetworkImage('https://cdn.allthings.how/wp-content/uploads/2020/10/allthings.how-how-to-change-your-profile-picture-on-google-meet-profile-photo-759x427.png?width=1500'),
                //   )
                // ],
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://cdn.allthings.how/wp-content/uploads/2020/10/allthings.how-how-to-change-your-profile-picture-on-google-meet-profile-photo-759x427.png?width=1500'),
                    fit: BoxFit.cover,
                  ),
                ),

              ),
              ListTile(
                dense: true,
                title: const Text('Home Page'),
                trailing: const Icon(Icons.menu),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context)=>OtherPage('other page')));
                },
              ),
              ListTile(
                dense: true,
                title: const Text("About page"),
                trailing: const Icon(Icons.security),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context)=>aboutPage("About PAge")));
                },
              ),
              ListTile(
                dense: true,
                title: const Text("Settings page"),
                trailing: const Icon(Icons.info),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context)=>OtherPage('settings page')));
                },
              ),
              const Divider(
                thickness: 10.0,
              ),
              ListTile(
                title: const Text('Close'),
                leading: const Icon(Icons.close),
                onTap: ()=>Navigator.of(context).pop(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}