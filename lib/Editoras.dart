import 'package:flutter/material.dart';

class Editoras extends StatefulWidget {
  const Editoras({ Key? key }) : super(key: key);

  @override
  _EditorasState createState() => _EditorasState();
}

class _EditorasState extends State<Editoras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Editoras', style: TextStyle(fontSize: 20))),
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.cyan,
      ),
      body: Center(child: Text('Editoras', style: TextStyle(color: Colors.white, fontSize: 20))),
      backgroundColor: Colors.grey[800],
    );
  }
}