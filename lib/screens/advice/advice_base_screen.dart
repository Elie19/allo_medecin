import 'package:flutter/material.dart';

class AdviceBaseScreen extends StatelessWidget {
  const AdviceBaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Conseils Médicaux')),
      body: const Center(child: Text('Base de conseils médicaux (FAQ)')),
    );
  }
}
