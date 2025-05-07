import 'package:flutter/material.dart';
import 'routes.dart';

class AlloMedecinApp extends StatelessWidget {
  const AlloMedecinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Allo Médecin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
