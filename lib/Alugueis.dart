import 'package:flutter/material.dart';

class Alugueis extends StatefulWidget {
  const Alugueis({ Key? key }) : super(key: key);

  @override
  _AlugueisState createState() => _AlugueisState();
}

class _AlugueisState extends State<Alugueis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Alugueis', style: TextStyle(fontSize: 20))),
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.cyan,
      ),
      body: Center(child: Text('Alugueis', style: TextStyle(color: Colors.white, fontSize: 20))),
      backgroundColor: Colors.grey[800],
    );
  }
}