import 'package:first_project/Alugueis.dart';
import 'package:first_project/Clientes.dart';
import 'package:first_project/Dashboard.dart';
import 'package:first_project/Editoras.dart';
import 'package:first_project/Livros.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage(),));

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int paginatual = 0;
late PageController pc;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    pc = PageController(initialPage: paginatual);
  }

  setPaginaAtual(pagina){
    setState(() {
      paginatual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          Dashboard(),
          Clientes(),
          Editoras(),
          Livros(),
          Alugueis(),
        ],
        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: BottomNavigationBar( 
        elevation: 10, 
        fixedColor: Colors.white54,  
        currentIndex: paginatual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.deepPurple[500],), label: 'Dashboard',backgroundColor: Colors.grey[800],),
          BottomNavigationBarItem(icon: Icon(Icons.add_reaction,color: Colors.cyan,), label: 'Clientes',backgroundColor: Colors.grey[800],),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance,color: Colors.cyan,), label: 'Editoras',backgroundColor: Colors.grey[800],),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book,color: Colors.cyan,), label: 'Livros',backgroundColor: Colors.grey[800],),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today,color: Colors.cyan,), label: 'Alugueis',backgroundColor: Colors.grey[800],),
        ],
        onTap: (pagina){
          pc.animateToPage(pagina, duration: Duration(milliseconds: 700), curve: Curves.ease,);
        },
      ),
    );
  }
}