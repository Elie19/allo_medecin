import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final doctorName = ModalRoute.of(context)?.settings.arguments as String? ?? 'Docteur inconnu';

    return Scaffold(
      appBar: AppBar(
        title: Text('Rendez-vous avec $doctorName'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Choisissez une date :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: ouvrir un datePicker
              },
              icon: const Icon(Icons.calendar_today),
              label: const Text('Sélectionner la date'),
            ),
            const SizedBox(height: 30),
            const Text(
              'Choisissez une heure :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: [
                ChoiceChip(label: const Text("9h"), selected: false),
                ChoiceChip(label: const Text("11h"), selected: false),
                ChoiceChip(label: const Text("14h"), selected: false),
                ChoiceChip(label: const Text("16h"), selected: false),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // TODO: confirmer
              },
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
              child: const Text('Confirmer le rendez-vous'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              child: const Text('Accueil'),
            ),
          ],
        ),
      ),
    );
  }
}
