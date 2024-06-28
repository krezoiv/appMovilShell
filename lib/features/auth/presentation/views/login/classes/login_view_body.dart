import 'package:app_shell/features/auth/presentation/bloc/login_bloc.dart';
import 'package:app_shell/features/auth/presentation/widgets/customs/buttons/custom_filled_button.dart';
import 'package:app_shell/features/auth/presentation/widgets/customs/geometrical_background.dart';
import 'package:app_shell/features/auth/presentation/widgets/customs/inputs/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //final textStyles = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: GeometricalBackground(
          backgroundImage: 'assets/images/fondo_shell.jpeg',
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: SizedBox(
              height: size.height,
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.3),
                  Expanded(
                    child: OverflowBox(
                      alignment: Alignment.topCenter,
                      maxHeight: size.height *
                          0.8, // Ajusta este valor para controlar cuánto puede subir
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.orange.shade400,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(100)),
                        ),
                        child: BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
                            return SingleChildScrollView(
                              physics: const ClampingScrollPhysics(),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: size.height *
                                      0.7, // Ajusta este valor según necesites
                                ),
                                child: IntrinsicHeight(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 125),
                                        Text(
                                          'Shell Lupita',
                                          style: GoogleFonts.notoSerifMalayalam(
                                            fontSize: 30.0,
                                          ),
                                        ),
                                        const SizedBox(height: 90),
                                        CustomTextFormField(
                                          label: 'Correo',
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          onChanged: (value) => context
                                              .read<LoginBloc>()
                                              .add(EmailChanged(value)),
                                          errorMessage: state.isFormPosted
                                              ? state.email.errorMessage
                                              : null,
                                        ),
                                        const SizedBox(height: 30),
                                        CustomTextFormField(
                                          label: 'Contraseña',
                                          obscureText: true,
                                          onChanged: (value) => context
                                              .read<LoginBloc>()
                                              .add(PasswordChanged(value)),
                                          errorMessage: state.isFormPosted
                                              ? state.password.errorMessage
                                              : null,
                                        ),
                                        const SizedBox(height: 30),
                                        SizedBox(
                                          width: double.infinity,
                                          height: 60,
                                          child: CustomFilledButton(
                                            text: 'Ingresar',
                                            buttonColor: Colors.black,
                                            onPressed: state.isValid
                                                ? () => context
                                                    .read<LoginBloc>()
                                                    .add(LoginSubmitted())
                                                : null,
                                          ),
                                        ),
                                        const Spacer(),
                                        const SizedBox(height: 20),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
