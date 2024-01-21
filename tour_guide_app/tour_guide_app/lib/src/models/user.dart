class User {
  final String email;
  final String password; // Consider using secure methods for handling passwords
  final String firstName;
  final String lastName;
  final int age;

  User({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  // This method will convert the user data to a JSON object
  Map<String, dynamic> toJSON() {
    return {
      'email': email,
      'password': password,
      'firstName': firstName,
      'lastName': lastName,
      'age': age,
    };
  }

  // This factory method will convert the JSON object to user data
  factory User.fromJSON(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      password: json['password'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      age: json['age'],
    );
  }
}
