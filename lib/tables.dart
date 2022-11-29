import 'package:flutter/material.dart';

class TablesEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: DataTable
          (columns: const <DataColumn>[
          DataColumn(label: Text(
            "Name", style: TextStyle(fontStyle: FontStyle.italic),)),
          DataColumn(
              label: Text("Age", style: TextStyle(fontStyle: FontStyle.italic),)),
          DataColumn(label: Text(
            "Role", style: TextStyle(fontStyle: FontStyle.italic),)),
        ],
          rows: const<DataRow>[
            DataRow(
                cells: <DataCell>[
                  DataCell(Text('aysha')),
                  DataCell(Text('22')),
                  DataCell(Text('Student'))
                ]),
            DataRow(
                cells: <DataCell>[
                  DataCell(Text('achu')),
                  DataCell(Text('22')),
                  DataCell(Text('it support engineer')),
                ]),
          ],
        border: TableBorder.all(),
        ),

      ),
    );
  }
}

void main(){
  runApp(MaterialApp(home: TablesEx(),));
}