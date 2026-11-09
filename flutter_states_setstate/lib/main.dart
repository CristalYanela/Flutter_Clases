import 'package:flutter/material.dart';
import 'package:flutter_states_setstate/counter_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contador con StatefullWidget-setSate",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: CounterScreen(),
    );
  }
}