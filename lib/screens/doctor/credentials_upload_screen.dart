import 'package:flutter/material.dart';

class CredentialsUploadScreen extends StatelessWidget {
  const CredentialsUploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Documents & Diplômes')),
      body: const Center(child: Text('Upload des justificatifs')),
    );
  }
}
