import 'package:flutter/material.dart';

import '../home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("CustomAppBar"),
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: (){},
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite),
              )
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for something",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList
            (delegate: SliverChildListDelegate([
              const SizedBox(
                height: 400,
                child: Center(
                  child: Text('This is an awsome shopping platform',
                  ),
                ),
              ),
            Container(
              height: 1000,
              color: Colors.pink,
            )

          ]))
        ]),

    );
  }
}
