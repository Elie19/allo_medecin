import 'package:flutter/material.dart';
class CampaignsScreen extends StatelessWidget {
  const CampaignsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Campagnes de Santé')),
      body: const Center(child: Text('Liste des campagnes de santé')),);
  }
}