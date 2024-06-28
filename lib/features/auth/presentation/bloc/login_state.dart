part of 'login_bloc.dart';

enum FormStatus { initial, validating, success, failure }

class LoginState extends Equatable {
  final FormStatus formStatus;
  final bool isValid;
  final Email email;
  final Password password;
  final bool isFormPosted;

  const LoginState({
    this.formStatus = FormStatus.initial,
    this.isValid = false,
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.isFormPosted = false,
  });

  LoginState copyWith({
    FormStatus? formStatus,
    bool? isValid,
    Email? email,
    Password? password,
    bool? isFormPosted,
  }) =>
      LoginState(
        formStatus: formStatus ?? this.formStatus,
        isValid: isValid ?? this.isValid,
        email: email ?? this.email,
        password: password ?? this.password,
        isFormPosted: isFormPosted ?? this.isFormPosted,
      );

  @override
  List<Object> get props =>
      [formStatus, isValid, email, password, isFormPosted];
}
