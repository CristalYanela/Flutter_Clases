import 'package:flutter/material.dart';
import 'package:flutter_paso_parametros/screens/first_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paso de parametros entre ventanas',
      theme: ThemeData(
        primarySwatch: Colors.blue, useMaterial3: false
      ),
      home: const FirstScreen(),
    );
  }
}