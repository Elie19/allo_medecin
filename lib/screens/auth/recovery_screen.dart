import 'package:flutter/material.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Récupération de compte')),
      body: const Center(child: Text('Formulaire de récupération par SMS ou Email')),
    );
  }
}
