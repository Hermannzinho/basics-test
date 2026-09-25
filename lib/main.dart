import 'package:flutter/material.dart';

import 'user_list_screen.dart';

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

