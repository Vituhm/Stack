import 'package:flutter/material.dart';

class StackPilha extends StatefulWidget {
  @override
  State createState() => new StackState();
}

class StackState extends State<StackPilha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Barra de Titulo
        appBar: AppBar(title: new Text("Stack - Pilha")),

        //Menus lateral
        drawer: new Drawer(
          // Listview (itens do menu)
        ),

        // Corpo do App
        body: new Stack(
          children: [
            // Primeiro elemento (abaixo dos outros)
            new Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(10),
              width: 550,
              height: 650,
              color: Colors.blueAccent,
              child: Text(
                "Stack 1",
                style: TextStyle(fontSize: 32),
              ),
            ),

            // Segundo elemento (acima do primeiro)
            new Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              width: 450,
              height: 550,
              color: Colors.greenAccent,
              child: Text(
                "Stack 2",
                style: TextStyle(fontSize: 32),
              ),
            ),

            //Terceiro elemento (acima do segundo)
            new Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: 350,
              height: 450,
              color: Colors.yellowAccent,
              child: Text(
                "Stack 3",
                style: TextStyle(fontSize: 32),
              ),
            ),
            
            //Quarto elemento (acima do terceiro)
            new Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: 250,
              height: 350,
              color: Colors.pinkAccent,
              child: Text(
                "Stack 4",
                style: TextStyle(fontSize: 32),
              ),
            ),


          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            //Icone Home
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            //Icone Sair
            BottomNavigationBarItem(
              label: "Sair",
              icon: Icon(Icons.logout),
            ),
          ]
        ),
      ),
    );
  }
}