// bin/main.dart
import 'dart:io';

import 'package:padilla_dartproject/riverpod_provider.dart';
import 'package:riverpod/riverpod.dart';

import 'user_service.dart';

// Initialize Riverpod and the application
void main() {
  final container = ProviderContainer();
  final userService = container.read(userProvider);

  runApp(userService);
}

// Function to run the application logic
void runApp(UserService userService) {
  while (true) {
    print('1. Add user');
    print('2. List all users');
    print('3. Exit');
    print('Enter a choice:');
    String? input = stdin.readLineSync();

    if (input == '1') {
      addUser(userService);
    } else if (input == '2') {
      listUsers(userService);
    } else if (input == '3') {
      print('Exiting...');
      break;
    } else {
      print('Invalid choice. Try again.');
    }
  }
}

// Function to handle adding a user
void addUser(UserService userService) {
  print('Enter name:');
  String? name = stdin.readLineSync();

  print('Enter age:');
  String? ageInput = stdin.readLineSync();
  int? age = int.tryParse(ageInput ?? '');

  if (name != null && age != null) {
    userService.addUser(name, age);
  } else {
    print('Invalid input.');
  }
}

// Function to list all users
void listUsers(UserService userService) {
  var users = userService.getAllUsers();
  if (users.isEmpty) {
    print('No users available.');
  } else {
    for (var user in users) {
      print(user);
    }
  }
}
