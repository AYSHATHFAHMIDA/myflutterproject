import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    // debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
class HomeScreen extends StatelessWidget{
  @override
  void _show(BuildContext ctx){
    showModalBottomSheet(isScrollControlled: true,
        elevation: 3,
        context: ctx,
        builder: (ctx)=>Container(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(ctx).viewInsets.bottom+100,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(labelText: 'name'),
              ),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'age'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(ctx).pop();
                  },
                  child: const Text('submit'))
            ],
          ),
        ));
  }
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('BottomSheet'),

        ),
        body: Container(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: ()=>_show(context),
        ),
      );
  }

}