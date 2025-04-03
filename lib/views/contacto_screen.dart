import 'package:flutter/material.dart';

class ContactoScreen extends StatefulWidget {
  const ContactoScreen({super.key});

  @override
  _ContactoScreenState createState() => _ContactoScreenState();
}

class _ContactoScreenState extends State<ContactoScreen> {
  final TextEditingController _controller = TextEditingController(); // Controlador para el TextField

  @override
  void initState() {
    super.initState();
    print('initState: La pantalla Contacto se ha creado correctamente');
  }

  @override
  void dispose() {
    // Imprime el mensaje en la consola al cerrar la pantalla
    print('dispose: Mensaje ingresado: ${_controller.text}');
    _controller.dispose(); // Limpia el controlador del TextField
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build: Dibujando la interfaz de Contacto');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Regresa a la pantalla anterior
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Fondo verde
              foregroundColor: Colors.black, // Texto negro
            ),
            child: const Text('Inicio'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Contáctanos',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controller, // Asigna el controlador al TextField
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escribe tu mensaje aquí',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Mensaje enviado: ${_controller.text}');
              },
              child: const Text('Enviar mensaje'),
            ),
          ],
        ),
      ),
    );
  }
}