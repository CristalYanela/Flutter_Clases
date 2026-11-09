//import 'package:flutter/material.dart';

/*
void main() {
  //Text text = Text("Hola mundo", textDirection: TextDirection.ltr);
  //Center center = Center(child: text);
  //runApp(center);

  runApp(
    Center(child: Text("Hola mundo con Flutter", textDirection: TextDirection.ltr),
    )
    );
}
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, 
    theme: ThemeData(),
    home: Scaffold(
      appBar: AppBar(title: Text("Titulo del AppBar"),),
    ));
  }
}
