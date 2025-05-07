import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'screens/search/search_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/consultation/consultation_screen.dart';
import 'screens/message/message_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (_) => const HomeScreen(),
  '/search': (_) => const SearchScreen(),
  '/profile': (_) => const ProfileScreen(),
  '/consultation': (_) => const ConsultationScreen(),
  '/message': (_) => const MessageScreen(),
  '/login': (_) => const LoginScreen(),
  '/register': (_) => const RegisterScreen(),
};
