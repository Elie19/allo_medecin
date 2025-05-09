import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> doctors = [
      {
        'name': 'Dr Amiratih DINE',
        'speciality': 'Médecin Généraliste',
        'city': 'Parakou',
        'image':
        'https://randomuser.me/api/portraits/women/1.jpg',
        'rating': 5
      },
      {
        'name': 'Dr Jean Pague',
        'speciality': 'Cardiologue',
        'city': 'Parakou',
        'image':
        'https://randomuser.me/api/portraits/men/2.jpg',
        'rating': 8
      },
      {
        'name': 'Dr Brice DONOU',
        'speciality': 'Pédiatre',
        'city': 'Parakou',
        'image':
        'https://randomuser.me/api/portraits/men/3.jpg',
        'rating': 7
      },
      {
        'name': 'Dr Brice DONOU',
        'speciality': 'Pédiatre',
        'city': 'Parakou',
        'image':
        'https://randomuser.me/api/portraits/men/4.jpg',
        'rating': 7
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Docteur"),
        backgroundColor: Colors.blue,
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Rechercher',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  final doc = doctors[index];
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      '/doctor_profile',
                      arguments: doc,
                    ),
                    child: DoctorCard(
                      name: doc['name'],
                      speciality: doc['speciality'],
                      city: doc['city'],
                      imageUrl: doc['image'],
                      rating: doc['rating'],
                    ),
                  );

                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              child: const Text('Accueil'),
            )
          ],
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String speciality;
  final String city;
  final String imageUrl;
  final int rating;

  const DoctorCard({
    super.key,
    required this.name,
    required this.speciality,
    required this.city,
    required this.imageUrl,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(radius: 30, backgroundImage: NetworkImage(imageUrl)),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                  Text('$speciality  $city'),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 18),
                      const SizedBox(width: 4),
                      Text('$rating/10'),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(100, 30)),
                  child: const Text('Rendez-vous',
                      style: TextStyle(fontSize: 12)),
                ),
                const SizedBox(height: 6),
                Row(
                  children: const [
                    Icon(Icons.message, size: 20),
                    SizedBox(width: 8),
                    Icon(Icons.favorite_border, size: 20),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
