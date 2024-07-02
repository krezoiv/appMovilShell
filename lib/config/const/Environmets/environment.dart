import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String nameEnv = '.env';

  static initEnvironment() async {
    await dotenv.load(fileName: nameEnv);
  }

  static String apiUrl =
      dotenv.env['API_URL'] ?? 'No esta configurado el API_URL';
}
