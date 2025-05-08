import 'package:flutter/material.dart';

class PatientFileScreen extends StatelessWidget {
  const PatientFileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fiche Patient')),
      body: const Center(child: Text('Antécédents, allergies, historique')),
    );
  }
}
