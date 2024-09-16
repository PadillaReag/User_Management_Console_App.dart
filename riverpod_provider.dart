// lib/providers/user_provider.dart


// Providing an instance of UserService
import 'package:padilla_dartproject/user_service.dart';
import 'package:riverpod/riverpod.dart';

final userProvider = Provider<UserService>((ref) {
  return UserService();
});
