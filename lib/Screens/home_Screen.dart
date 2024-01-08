import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[700],
        title: const Center(child: Text(" V I S I B L R")),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
    );
  }
}
