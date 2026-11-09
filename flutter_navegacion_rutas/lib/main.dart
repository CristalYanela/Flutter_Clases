import 'package:flutter/material.dart';
import 'package:flutter_navegacion_rutas/pages/home_page.dart';
import 'package:flutter_navegacion_rutas/pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegacion y rutas en Flutter',

      initialRoute: "/",
      routes:{
        "/":(context) => HomePage(),
        "/secondPage": (context) => SecondPage(),
      },

      //home: HomePage(),
    );
  }
}