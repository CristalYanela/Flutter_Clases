import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController _controller = TextEditingController();
  String? _messageFromSecondScreen;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: const Text('Primera pantalla')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Ingrese su Nombre'),
            ),
          
            const SizedBox(height: 70),
        
            ElevatedButton(
              onPressed: () async {
                if (_controller.text.isNotEmpty) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(
                        messageFromFirstScreen: _controller.text,
                      ),
                    ),
                  );
                  
                  // Verificar si la ventana envió datos
                  if (result != null) {
                    setState(() {
                      _messageFromSecondScreen = result;
                    });
                  }
                }
              },
              child: const Text('Ir a la segunda pantalla'),
            ),

            // Aquí mostramos el mensaje recibido ---
            const SizedBox(height: 30), // Un poco de espacio
            if (_messageFromSecondScreen != null)
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                ),
                child: Text(
                  'Mensaje recibido: $_messageFromSecondScreen',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      )
    );
  } 
}