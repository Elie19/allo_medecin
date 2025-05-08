import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Paiement sécurisé')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.payment),
              label: const Text('Payer par Mobile Money'),
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            const Text('Suivi du paiement, statut, reçu...'),
          ],
        ),
      ),
    );
  }
}
