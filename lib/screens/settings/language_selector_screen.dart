import 'package:flutter/material.dart';

class LanguageSelectorScreen extends StatelessWidget {
  const LanguageSelectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Langue')),
      body: ListView(
        children: const [
          ListTile(title: Text('Français')),
          ListTile(title: Text('Fon')),
          ListTile(title: Text('Yoruba')),
          ListTile(title: Text('Anglais')),
        ],
      ),
    );
  }
}
