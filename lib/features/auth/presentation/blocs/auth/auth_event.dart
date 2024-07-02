part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginUser extends AuthEvent {
  final String email;
  final String password;

  const LoginUser({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}

class RegisterUser extends AuthEvent {
  final String email;
  final String password;

  const RegisterUser({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}

class CheckAuthStatus extends AuthEvent {}

class LogoutUser extends AuthEvent {}
