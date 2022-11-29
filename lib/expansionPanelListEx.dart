import 'package:flutter/material.dart';
import 'package:myflutterproject/checkBox.dart';

void main()=>runApp(const MyApp());
 class MyApp extends StatelessWidget{
   const MyApp({super.key});
   static const String _title='Flutter coed Sample';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
        ),
        body: const MyStatefulwidget(),
      ),
    );
  }

 }
 class Item{
   Item({required this.expandedValue,required this.headerValue,this.isExpanded=false,});
   String expandedValue;
   String headerValue;
   bool isExpanded;

 }
 List<Item>generateItems(int numberOfItems){
   return List<Item>.generate(numberOfItems, (int index){
     return Item(
         expandedValue: 'This is item number $index',
         headerValue: 'panel $index',
     );
   });
 }

class MyStatefulwidget extends StatefulWidget{
   const MyStatefulwidget({super.key});
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget>{
   final List<Item>_data=generateItems(8);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }
  Widget _buildPanel(){
    return ExpansionPanelList(
      expansionCallback: (int index,bool isExpanded){
        setState(() {
          _data[index].isExpanded=!isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item){
        return ExpansionPanel(
            headerBuilder: (BuildContext context,bool isExpanded){
              return ListTile(
                title: Text(item.headerValue),
              );
            },
            body: ListTile(
              title: Text(item.expandedValue),
              subtitle: const Text('to delete this panel, tap the trash icon'),
              trailing: const Icon(Icons.delete),
              onTap: (){
                setState(() {
                  _data.removeWhere((Item currentItem) => item==currentItem);
                });
              },
            )
        );
      }).toList(),
    );
  }
}