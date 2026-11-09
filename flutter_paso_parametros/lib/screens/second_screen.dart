import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String messageFromFirstScreen;

  const SecondScreen({super.key, required this.messageFromFirstScreen});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Segunda pantalla')),
      body: Padding(
        padding: const EdgeInsets.all(70),
        child: Column(
          children: [
            const Text( 'Informacion enviada adesde la primera pantalla'),

            const SizedBox(height: 20),

            Text(
              widget.messageFromFirstScreen,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 70),

            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: "Ingrese su mensaje",
              ),
        ),

        const SizedBox(height: 20),

        ElevatedButton(onPressed: () {
          Navigator.pop(context, _controller.text);      
              },
              child: const Text('Regresar a la primera pantalla'),
            ),
          ],
        ),
      ),
    );
  }
}