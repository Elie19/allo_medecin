import 'package:flutter/material.dart';

class PrescriptionScreen extends StatelessWidget {
  const PrescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ordonnance')),
      body: const Center(child: Text('Créer et envoyer une ordonnance')),
    );
  }
}
