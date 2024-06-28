import 'package:app_shell/features/auth/login/presentation/bloc/login_bloc.dart';
import 'package:app_shell/features/auth/login/presentation/widgets/widgets_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Importa otros Blocs que necesites aquí
// import 'package:app_shell/features/some_feature/bloc/some_bloc.dart';

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
        // Añade otros BlocProviders aquí según sea necesario
        // BlocProvider<SomeOtherBloc>(
        //   create: (context) => SomeOtherBloc(),
        // ),
      ],
      child: const Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}
