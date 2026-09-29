/// A user returned by https://jsonplaceholder.typicode.com/users
///
/// Example JSON for a single user:
/// {
///   "id": 1,
///   "name": "Leanne Graham",
///   "username": "Bret",
///   "email": "Sincere@april.biz",
///   "phone": "1-770-736-8031 x56442",
///   "website": "hildegard.org",
///   "address": {
///     "street": "Kulas Light",
///     "suite": "Apt. 556",
///     "city": "Gwenborough",
///     "zipcode": "92998-3874"
///   },
///   "company": {
///     "name": "Romaguera-Crona",
///     "catchPhrase": "Multi-layered client-server neural-net"
///   }
/// }
///
/// TODO: Implement this model. Include the fields you need for the
/// list and detail screens. How you model nested objects (address,
/// company) is up to you.
class User {
  // TODO: fields, constructor

  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;

  final String street;
  final String suite;
  final String city;
  final String zipcode;

  final String companyName;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.companyName,
  });

  // TODO: factory User.fromJson(Map<String, dynamic> json)

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
      street: json['address']['street'],
      suite: json['address']['suite'],
      city: json['address']['city'],
      zipcode: json['address']['zipcode'],
      companyName: json['company']['name'],
    );
  }
}
