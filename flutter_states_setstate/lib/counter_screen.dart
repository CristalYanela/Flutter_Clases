import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _increase() {
    setState(() {
      _counter++; // El incremento dentro de setState
    });
  }

  void _rese() {
    setState(() {
      _counter = 0;
    });
  }

  void _decrease() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador con StatefulWidget-setState'),
      ), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Ha presionado el botón:',
              style: TextStyle(fontSize: 25),
            ),
            const Spacer(flex: 2),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                _increase();
              }, 
              child: const Text('Incrementar'),
            ),
            const Spacer(flex: 2),
            ElevatedButton(
              onPressed: () {
                _rese();
              },
              child: const Text('Resetear'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                _decrease();
              },
              child: const Text('Decrementar'),
            ),
          ],
        ),
      ),
    );
  }
}