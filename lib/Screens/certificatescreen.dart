import 'package:dashboardtest_1/Screens/basescreen.dart';
import 'package:flutter/material.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScreen(
      title: 'Certificate',
      body: Center(
        child: Text('Certificate Screen Content'),
      ),
    );
  }
}
