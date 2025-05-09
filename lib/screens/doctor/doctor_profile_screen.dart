import 'package:flutter/material.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final doctor = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};

    return Scaffold(
      appBar: AppBar(
        title: Text(doctor['name'] ?? 'Médecin'),
        backgroundColor: Colors.blue,
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(doctor['image'] ?? ''),
            ),
            const SizedBox(height: 10),
            Text(
              doctor['speciality'] ?? 'Spécialité inconnue',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.location_on),
                Text(doctor['city'] ?? 'Ville inconnue'),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              doctor['bio'] ?? 'Aucune biographie disponible',
              textAlign: TextAlign.center,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                '/appointment',
                arguments: doctor['name'] ?? 'Médecin',
              ),
              child: const Text('Prendre rendez-vous'),
            ),
            const SizedBox(height: 10),
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
