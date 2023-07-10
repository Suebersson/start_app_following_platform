
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Mobile'),
      ),
      body: const Center(
        child: Text(
          'interface',
          style: TextStyle(
            fontSize: 30.0,

          ),
        )
      ),
    );
  }
}