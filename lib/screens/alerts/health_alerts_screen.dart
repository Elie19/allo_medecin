import 'package:flutter/material.dart';

class HealthAlertsScreen extends StatelessWidget {
  const HealthAlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alertes de Santé')),
      body: const Center(child: Text('Alertes et notifications sanitaires')),
    );
  }
}
