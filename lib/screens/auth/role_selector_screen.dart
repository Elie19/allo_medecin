import 'package:flutter/material.dart';
class RoleSelectorScreen extends StatelessWidget {
  const RoleSelectorScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choix du rôle')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Je suis Patient')),
          ElevatedButton(onPressed: () {}, child: const Text('Je suis Médecin')),
        ],
      ),
    );
  }
}