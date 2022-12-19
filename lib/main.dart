import 'package:flutter/material.dart';
import 'package:pokemon_app/api/api.dart';
import 'package:pokemon_app/screens/homescreen.dart';
import 'package:pokemon_app/screens/loginscreen.dart';

void main() {
  getTokenFromMemory();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body:  accessToken.isEmpty ? LoginScreen() : HomeScreen(),
      ),
    );
  }
}