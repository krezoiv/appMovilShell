import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:app_shell/features/auth/auth_exports_files.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const AuthState()) {
    on<LoginUser>(_onLoginUser);
    on<RegisterUser>(_onRegisterUser);
    on<CheckAuthStatus>(_onCheckAuthStatus);
    on<LogoutUser>(_onLogoutUser);
  }

  Future<void> _onLoginUser(LoginUser event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.checking));

    try {
      final user = await authRepository.login(event.email, event.password);
      emit(state.copyWith(
        status: AuthStatus.authenticated,
        user: user,
        errorMessage: '',
      ));
    } on WrongCredentials {
      emit(state.copyWith(
        status: AuthStatus.notAuthenticated,
        errorMessage: 'Credenciales incorrectas',
      ));
    } on ConnectionTimeout {
      emit(state.copyWith(
        status: AuthStatus.notAuthenticated,
        errorMessage: 'Timeout',
      ));
    } catch (e) {
      emit(state.copyWith(
        status: AuthStatus.notAuthenticated,
        errorMessage: 'Error desconocido',
      ));
    }
  }

  void _onRegisterUser(RegisterUser event, Emitter<AuthState> emit) {
    // Implementa la lógica de registro aquí
  }

  void _onCheckAuthStatus(CheckAuthStatus event, Emitter<AuthState> emit) {
    // Implementa la lógica de verificación de estado de autenticación aquí
  }

  Future<void> _onLogoutUser(LogoutUser event, Emitter<AuthState> emit) async {
    // TODO: limpiar token
    emit(state.copyWith(
      status: AuthStatus.notAuthenticated,
      user: null,
      errorMessage:
          '', // O puedes poner un mensaje específico para el logout si lo deseas
    ));
  }
}
