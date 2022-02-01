import 'package:flutter/material.dart';

class Livros extends StatefulWidget {
  const Livros({ Key? key }) : super(key: key);

  @override
  _LivrosState createState() => _LivrosState();
}

class _LivrosState extends State<Livros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Livros', style: TextStyle(fontSize: 20))),
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.cyan,
      ),
      body: Center(child: Text('Livros', style: TextStyle(color: Colors.white, fontSize: 20))),
      backgroundColor: Colors.grey[800],
    );
  }
}