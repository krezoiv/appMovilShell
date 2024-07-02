import 'package:app_shell/features/auth/auth_exports_files.dart';
import 'package:app_shell/features/auth/presentation/blocs/login_form/login_bloc.dart';
import 'package:app_shell/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:app_shell/features/auth/presentation/widgets/widgets_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  static const name = 'login-view';
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(
            authRepository: RepositoryProvider.of<AuthRepository>(context),
          ),
        ),
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == AuthStatus.authenticated) {
            // Navegar a la página principal si la autenticación es exitosa
            Navigator.of(context).pushReplacementNamed('/home-view');
          }
        },
        child: const Scaffold(
          body: LoginViewBody(),
        ),
      ),
    );
  }
}
