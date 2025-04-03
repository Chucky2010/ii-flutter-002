import 'package:flutter/material.dart';
import 'acerca_de_screen.dart';
import 'contacto_screen.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡Bienvenido a la pantalla de Inicio!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AcercaDeScreen()),
                );
              },
              child: const Text('Ir a Acerca de'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactoScreen()),
                );
              },
              child: const Text('Ir a Contacto'),
            ),
          ],
        ),
      ),
    );
  }
}