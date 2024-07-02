import 'package:app_shell/features/auth/auth_exports_files.dart';

class UserMapper {
  static User userJsonToEntity(Map<String, dynamic> json) => User(
      idUser: json['idUser'],
      firstName: json['firstName'],
      lastNam: json['lastNam'],
      email: json['email'],
      password: json['password'],
      roleId: json['roleId'],
      statusId: json['statusId'],
      token: json['token']);
}
