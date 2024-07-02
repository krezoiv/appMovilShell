import 'package:app_shell/features/auth/auth_exports_files.dart';

abstract class AuthDatasource {
  Future<User> login(String email, String password);
  Future<User> checkAuthStatus(String token);
}
