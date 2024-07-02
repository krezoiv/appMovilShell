import 'package:app_shell/features/auth/auth_exports_files.dart';

abstract class AuthRepository {
  Future<User> login(String email, String password);
  Future<User> checkAuthStatus(String token);
}
