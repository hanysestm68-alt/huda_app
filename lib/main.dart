import 'package:flutter/material.dart';

void main() {
  runApp(const HudaApp());
}

class HudaApp extends StatelessWidget {
  const HudaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Huda App"),
        ),
        body: const Center(
          child: Text(
            "مرحباً بك في تطبيق هدى",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
