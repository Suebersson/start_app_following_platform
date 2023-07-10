
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.red,
      child: Center(
        child: Text(
          'interface web',
            style: TextStyle(
            fontSize: 30.0,
            color: Colors.white
          ),
        )
      ),
    );
  }
}