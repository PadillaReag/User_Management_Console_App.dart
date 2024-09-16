// lib/services/user_service.dart


import 'package:padilla_dartproject/user_model.dart';

class UserService {
  final List<User> _users = [];

  // Function to add a user
  void addUser(String name, int age) {
    _users.add(User(name, age));
    print('User added: $name, $age');
  }

  // Function to retrieve all users
  List<User> getAllUsers() {
    return _users;
  }
}
