import 'package:flutter/material.dart';

class ContactoScreen extends StatelessWidget {
  const ContactoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Regresa a la pantalla anterior
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Fondo blanco
              foregroundColor: Colors.black, // Texto negro
            ),
            child: const Text('Inicio'),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Contáctanos',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}