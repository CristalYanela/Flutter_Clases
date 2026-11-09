import 'package:flutter/material.dart'; //Material Design

//import 'package:flutter/cupertino.dart'; //Apple

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String titleAppBar = "Titulo del AppBar";

  @override
  Widget build(BuildContext context) {
    //MaterialApp materialApp = new MaterialApp();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Proyecto con Scaffold",
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(
          title: Text(titleAppBar, style: TextStyle(color: Colors.white)), 
          backgroundColor: Colors.redAccent,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: (){},
        ),
        IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: (){}),
          ],
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Titulo del Drawer", style: TextStyle(),),
              ),
              ListTile(title: Text("Item 1"), onTap: (){}),
              ListTile(title: Text("Item 2"), onTap: (){}),
              ListTile(title: Text("Item 3"), onTap: (){}),
              ListTile(title: Text("Item 4"), onTap: (){}),
            ],
            
          ),
        ),

        body: Center(
          child: Text(
            "Este es el body del Scaffod",
            style: TextStyle(fontSize: 30),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label :"Inicio"),
        BottomNavigationBarItem(icon: Icon(Icons.album), label :"album"),
        BottomNavigationBarItem(icon: Icon(Icons.business), label :"Negocios"),
        ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //codigo -- el codigo se pone aparte y solo se llama al metodo
          },
          child: Icon(Icons.abc_outlined),
        ),
      ),
    );
  }
}