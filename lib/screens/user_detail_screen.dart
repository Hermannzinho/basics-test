import 'package:flutter/material.dart';
import '../models/user.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;

  const UserDetailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Details')),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          CircleAvatar(
            radius: 40,
            child: Text(
              user.name.substring(0, 1),
              style: const TextStyle(fontSize: 30),
            ),
          ),

          const SizedBox(height: 20),

          Center(
            child: Text(
              user.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 30),

          const Text(
            'Personal Information',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          InfoRow(title: 'Username', value: user.username),

          InfoRow(title: 'Email', value: user.email),

          InfoRow(title: 'Phone', value: user.phone),

          InfoRow(title: 'Website', value: user.website),

          const SizedBox(height: 20),

          const Text(
            'Address',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          InfoRow(title: 'Street', value: user.street),

          InfoRow(title: 'Suite', value: user.suite),

          InfoRow(title: 'City', value: user.city),

          InfoRow(title: 'ZIP Code', value: user.zipcode),

          const SizedBox(height: 20),

          const Text(
            'Company',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          InfoRow(title: 'Company Name', value: user.companyName),
        ],
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String title;
  final String value;

  const InfoRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
