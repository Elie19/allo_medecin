import 'package:flutter/material.dart';

class WebRTCConsultationScreen extends StatelessWidget {
  const WebRTCConsultationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Consultation Vidéo')),
      body: const Center(child: Text('Interface WebRTC audio/vidéo/chat')),
    );
  }
}
