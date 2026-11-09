import 'package:flutter/material.dart ';
//import 'package:flutter_navegacion_rutas/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage()));
            Navigator.pushNamed(context, "/secondPage");
          },
          child: const Text('Mostrar Pagina 2'),
        ),
      ),
    );
  }
}