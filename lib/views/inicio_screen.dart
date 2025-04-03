import 'package:flutter/material.dart';
import 'acerca_de_screen.dart';
import 'contacto_screen.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({super.key});

  @override
  _InicioScreenState createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  int _counter = 0; // Variable de estado para el contador

  @override
  void initState() {
    super.initState();
    // Aquí puedes inicializar datos o realizar configuraciones necesarias
    print('initState: El widget se ha creado');
  }

  void _incrementCounter() {
    setState(() {
      _counter++; // Actualiza el estado del contador
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build: Dibujando la interfaz');
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
            Text(
              'Contador: $_counter',
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter, // Incrementa el contador
              child: const Text('Incrementar contador'),
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