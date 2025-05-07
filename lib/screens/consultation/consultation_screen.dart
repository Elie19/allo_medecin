import 'package:flutter/material.dart';

class ConsultationScreen extends StatelessWidget {
  const ConsultationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mes consultations')),
      body: const Center(child: Text('Liste des rendez-vous')),
    );
  }
}
