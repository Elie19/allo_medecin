import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const BottomNavBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Recherche'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'RDV'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
      ],
    );
  }
}
