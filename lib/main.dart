import 'package:flutter/material.dart';
import 'screens/user_list_screen.dart';

void main() {
  runApp(const BasicsTestApp());
}

class BasicsTestApp extends StatelessWidget {
  const BasicsTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Directory',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const UserListScreen(),
    );
  }
}

/// TODO: Replace this placeholder with your user list screen.
/// Feel free to restructure the project (folders, files, naming) however
/// you see fit — project organization is part of the exercise.
class PlaceholderHomeScreen extends StatelessWidget {
  const PlaceholderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Directory')),
      body: const Center(
        child: Text('Start here — see README.md for instructions.'),
      ),
    );
  }
}
