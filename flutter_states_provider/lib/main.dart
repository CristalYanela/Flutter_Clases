import 'package:flutter/material.dart';
import 'package:flutter_states_provider/providers/counter_provider.dart';
import 'package:flutter_states_provider/pages/home_page.dart';
import 'package:flutter_states_provider/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_states_provider/providers/user_provider.dart';

void main() {
  runApp(
    /*ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MyApp(),
    ),
    */
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: "Contador con el gestor/provedor de estados: Provider",
      /*theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: false,
      ),*/
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),

      //utilizar el provedor del tema
      themeMode: themeProvider.themeMode,
      home: HomePage(),
    );
  }
}
