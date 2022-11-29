import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main(){
  runApp(MaterialApp(home: Staggered_Grid_View(),));
}
class Staggered_Grid_View extends StatelessWidget{

  final List<StaggeredTile> _cardTile=const <StaggeredTile> [
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),

  ];

  final List<Widget> _listTile=<Widget>[
    BackgroundTile(backgroundColor: Colors.red,icondata: Icons.home),
    BackgroundTile(backgroundColor: Colors.orange,icondata: Icons.ac_unit),
    BackgroundTile(backgroundColor: Colors.pink,icondata: Icons.landscape),
    BackgroundTile(backgroundColor: Colors.blueAccent,icondata: Icons.portrait),
    BackgroundTile(backgroundColor: Colors.green,icondata: Icons.music_note),
    BackgroundTile(backgroundColor: Colors.yellow,icondata: Icons.access_alarm),
    BackgroundTile(backgroundColor: Colors.purple,icondata: Icons.account_circle),
    BackgroundTile(backgroundColor: Colors.grey,icondata: Icons.access_time),
    BackgroundTile(backgroundColor: Colors.blue,icondata: Icons.holiday_village),
    BackgroundTile(backgroundColor: Colors.redAccent,icondata: Icons.label_important),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: StaggeredGridView.count(
            crossAxisCount: 4,
            staggeredTiles: _cardTile,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
          children: _listTile,
        ),
      ),
    );

  }
}


class BackgroundTile extends StatelessWidget{
    final Color? backgroundColor;
    final IconData icondata;
    BackgroundTile({this.backgroundColor,required this.icondata});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child:Icon(icondata,color: Colors.white),
    );
  }
}