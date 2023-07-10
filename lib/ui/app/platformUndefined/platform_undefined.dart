import 'package:flutter/material.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Undefined App',
      debugShowCheckedModeBanner: true,
      themeMode: ThemeMode.light,
      home: Material(
        color: Colors.red,
        child: Center(
          child: Text(
            'Platform undefined',
              style: TextStyle(
              fontSize: 40.0,
              color: Colors.yellow
            ),
          )
        ),
      ),
    );
  }
}
