import 'package:flutter/material.dart';

class ConsentScreen extends StatelessWidget {
  const ConsentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Consentement')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Veuillez lire et accepter les conditions d’utilisation, les règles RGPD, '
              'et les conditions de traitement des données médicales.',
        ),
      ),
    );
  }
}
