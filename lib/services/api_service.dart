/// Service responsible for talking to the JSONPlaceholder API.
///
/// Base URL: https://jsonplaceholder.typicode.com
/// Endpoint: GET /users  →  returns a JSON array of users.
///
/// The `http` package is already added to pubspec.yaml, but you may use
/// another HTTP client (e.g. dio) if you prefer — just add it yourself.
///
/// TODO: Implement fetching the list of users. Think about:
///  - What should happen when the request fails (non-200, no network)?
///  - What should the method's signature look like so the UI layer can
///    show loading / error / success states cleanly?

import 'dart:convert';
 
import 'package:http/http.dart' as http;
 
import '../models/user.dart';
 
class ApiService {
static const String usersUrl =
'https://jsonplaceholder.typicode.com/users';
 
Future<List<User>> getUsers() async {
final response = await http.get(
Uri.parse(usersUrl),
);
 
if (response.statusCode == 200) {
final List<dynamic> jsonData =
jsonDecode(response.body);
 
return jsonData
.map((userJson) =>
User.fromJson(userJson as Map<String, dynamic>))
.toList();
} else {
throw Exception('Failed to load users');
}
}
}

