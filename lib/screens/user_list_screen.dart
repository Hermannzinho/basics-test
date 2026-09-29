import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/api_service.dart';
import 'user_detail_screen.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  final ApiService apiService = ApiService();

  List<User> users = [];
  bool isLoading = true;
  String errorMessage = '';
  String searchText = '';

  @override
  void initState() {
    super.initState();
    loadUsers();
  }

  Future<void> loadUsers() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      final result = await apiService.getUsers();

      setState(() {
        users = result;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        errorMessage =
            'Unable to load users. Please check your internet connection.';
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final filteredUsers = users.where((user) {
      return user.name.toLowerCase().contains(searchText.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('User Directory')),

      body: Column(
        children: [
          // Search box
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search users...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          Expanded(child: buildBody(filteredUsers)),
        ],
      ),
    );
  }

  Widget buildBody(List<User> filteredUsers) {
    // Loading
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    // Error
    if (errorMessage.isNotEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 60),

              const SizedBox(height: 16),

              Text(errorMessage, textAlign: TextAlign.center),

              const SizedBox(height: 16),

              ElevatedButton(onPressed: loadUsers, child: const Text('Retry')),
            ],
          ),
        ),
      );
    }

    // User list
    return RefreshIndicator(
      onRefresh: loadUsers,
      child: ListView.builder(
        itemCount: filteredUsers.length,
        itemBuilder: (context, index) {
          final user = filteredUsers[index];

          return ListTile(
            leading: CircleAvatar(child: Text(user.name.substring(0, 1))),

            title: Text(
              user.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            subtitle: Text('${user.email}\n${user.companyName}'),

            isThreeLine: true,

            trailing: const Icon(Icons.arrow_forward_ios, size: 16),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return UserDetailScreen(user: user);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
