import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Robert Fox'),
        leading: const BackButton(),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/men/32.jpg',
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Robert Fox',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 20),

              // Age, Taille, Profession
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ProfileInfoTile(label: 'Âge', value: '32 ans'),
                  ProfileInfoTile(label: 'Taille', value: '1.8 m'),
                  ProfileInfoTile(label: 'Professions', value: 'Mécanicien'),
                ],
              ),

              const SizedBox(height: 16),

              // Groupe Sanguin, Rhésus
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ProfileInfoTile(label: 'Groupe Sanguin', value: 'B'),
                  ProfileInfoTile(label: 'Rhésus', value: 'Rh+'),
                ],
              ),

              const SizedBox(height: 16),

              // Dernière consultation
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ProfileInfoTile(label: 'Dernière consultation', value: 'Ven 8 mai 2025'),
                  ProfileInfoTile(label: 'Heure', value: '9h am'),
                ],
              ),

              const SizedBox(height: 16),

              // Ville
              const ProfileInfoTile(label: 'Ville', value: 'Parakou'),

              const SizedBox(height: 24),

              // Boutons
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.folder_open),
                label: const Text('Dossier médicale'),
              ),

              const SizedBox(height: 16),

              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: const Row(
                    children: [
                      Icon(Icons.description),
                      SizedBox(width: 10),
                      Text('Rapports de consultations'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInfoTile extends StatelessWidget {
  final String label;
  final String value;

  const ProfileInfoTile({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[200],
            ),
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
