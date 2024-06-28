import 'package:app_shell/features/auth/login/infraestructure/inputs/email.dart';
import 'package:app_shell/features/auth/login/infraestructure/inputs/password.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    final email = Email.dirty(event.email);
    emit(state.copyWith(
      email: email,
      isValid: Formz.validate([email, state.password]),
      isFormPosted:
          state.isFormPosted, // Mantén el estado actual de isFormPosted
    ));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
      password: password,
      isValid: Formz.validate([state.email, password]),
      isFormPosted:
          state.isFormPosted, // Mantén el estado actual de isFormPosted
    ));
  }

  void _onSubmitted(LoginSubmitted event, Emitter<LoginState> emit) {
    emit(state.copyWith(isFormPosted: true));
    if (state.isValid) {
      // Lógica para iniciar sesión
    }
  }
}
