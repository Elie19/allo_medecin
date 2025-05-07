import 'package:flutter/material.dart';
import '../../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onNavTap(int index) {
    setState(() {
      _selectedIndex = index;
    });

    final routes = ['/', '/search', '/message', '/consultation', '/profile'];
    Navigator.pushNamed(context, routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accueil')),
      body: const Center(child: Text('Contenu Accueil')),
      bottomNavigationBar: BottomNavBar(currentIndex: _selectedIndex, onTap: _onNavTap),
    );
  }
}
