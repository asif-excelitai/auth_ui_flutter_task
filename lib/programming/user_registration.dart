import 'dart:io';

class User {
  String email;
  String password;

  User(this.email, this.password);
}

List<User> users = [];

void registerUser(String email, String password) {
  // Perform email validation (you can use a regular expression or a library for more robust validation)
  if (!email.contains('@')) {
    print("Invalid email format.");
    return;
  }

  // Check if the email is already registered
  if (users.any((user) => user.email == email)) {
    print("Email is already registered.");
    return;
  }

  // Store the user in the database (in-memory list in this example)
  users.add(User(email, password));
  print("Registration successful.");
}

void main() {
  print("Eshop registration portal.");
  while (true) {
    print("Enter your email:");
    String email = stdin.readLineSync()!;
    print("Enter your password:");
    String password = stdin.readLineSync()!;
    registerUser(email, password);
  }
}
