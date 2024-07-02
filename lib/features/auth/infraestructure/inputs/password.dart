import 'package:app_shell/config/const/messages/error_inputs_messages.dart';
import 'package:formz/formz.dart';
// Asegúrate de usar la ruta correcta

enum PasswordError { empty, length }

class Password extends FormzInput<String, PasswordError> {
  const Password.pure() : super.pure('');
  const Password.dirty(super.value) : super.dirty();

  String? get errorMessage {
    if (isValid || isPure) return null;

    switch (displayError) {
      case PasswordError.empty:
        return ErrorInputsMessages.fieldRequired;
      case PasswordError.length:
        return ErrorInputsMessages.passwordTooShort;
      default:
        return null;
    }
  }

  @override
  PasswordError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return PasswordError.empty;
    if (value.length < 2) return PasswordError.length;
    return null;
  }
}
