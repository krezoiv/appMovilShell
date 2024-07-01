import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/features/settings/presentation/widgets/sidemenu_settings.dart';
import 'package:app_shell/shared/widgets/custtom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  static const name = RoutesPaths.settingsView;
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Módulo Ajustes'),
      ),
      drawer: SidemenuSettings(scaffoldKey: scaffoldKey),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
