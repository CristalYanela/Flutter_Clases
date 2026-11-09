import 'package:flutter/material.dart';
import 'package:flutter_states_provider/providers/counter_provider.dart';
import 'package:flutter_states_provider/providers/theme_provider.dart';
import 'package:flutter_states_provider/providers/user_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = context.watch<CounterProvider>();

    final userName = context.select<UserProvider, String>(
      (provider) => provider.userName,
    );

    final userProvider = context.read<UserProvider>();

    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Contador con: Provider-Multiprovider: $userName'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${counterProvider.counter}',
              style: const TextStyle(fontSize: 40),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: counterProvider.step == 1
                        ? Colors.amber
                        : Colors.grey[300],
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    context.read<CounterProvider>().setStep(1);
                  },
                  child: const Text('1'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: counterProvider.step == 2
                        ? Colors.amber
                        : Colors.grey[300],
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    context.read<CounterProvider>().setStep(2);
                  },
                  child: const Text('2'),
                ),
              ],
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                //context.read<CounterProvider>().increment();
                counterProvider.increment();
              },
              child: const Text('Incrementar'),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              /*onPressed: () {
                context.read<CounterProvider>().decrement();
              },*/
              onPressed: () => counterProvider.decrement(),
              child: const Text('Decrementar'),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                //context.read<CounterProvider>().reset();
                counterProvider.reset();
              },
              child: const Text('Resetear'),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                userProvider.userName = "MultiProvider";
              },
              child: const Text("Cambiar el titulo de AppBar"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                themeProvider.changeTheme();
              },
              child: Text(
                themeProvider.themeMode == ThemeMode.light
                    ? "Cambiar a Dark"
                    : "Cambiar a Light Mode",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
