import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobil Store'),
      ),
      body: Center(
        child: Text(
          'Welcome to Mobil Store!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}