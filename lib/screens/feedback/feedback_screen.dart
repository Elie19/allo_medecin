import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avis / Feedback')),
      body: const Center(child: Text('Noter, commenter, signaler un bug')),
    );
  }
}
