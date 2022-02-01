import 'dart:ui';

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Livraria WDA', style: TextStyle(fontSize: 20))),
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.cyan,
      ),
      body:  Center(child: Text('Dashboard', style: TextStyle(color: Colors.white, fontSize: 20))),
      backgroundColor: Colors.grey[800],
    );
  }
}