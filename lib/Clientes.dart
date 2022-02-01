import 'package:flutter/material.dart';

class Clientes extends StatefulWidget {
  const Clientes({ Key? key }) : super(key: key);

  @override
  _ClientesState createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Clientes', style: TextStyle(fontSize: 20))),
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.cyan,
      ),
      body:
      Container(
        
        child: DataTable(
        sortColumnIndex: 0,
        sortAscending: true,
        columns: [
          DataColumn(label: Text('ID'), numeric: true),
          DataColumn(label: Text('NOME')),
          DataColumn(label: Text('CIDADE')),
          DataColumn(label: Text('ENDEREÇO')),
          DataColumn(label: Text('EMAIL')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('Ronald Gabriel')),
            DataCell(Text('Fortaleza-CE')),
            DataCell(Text('AV Francisco Sá')),
            DataCell(Text('ronaldgabrielalves72@gmail.com')),
          ]),
          DataRow(cells: [
            DataCell(Text('2')),
            DataCell(Text('Pedro')),
            DataCell(Text('São Paulo-SP')),
            DataCell(Text('AV Paulista')),
            DataCell(Text('pedro555@gmail.com')),
          ]),
        ],
        ),
      ),
      backgroundColor: Colors.grey[800],
    );
  }
}