import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/features/dispensers/presentation/widgets/sidemenu_dispenser.dart';
import 'package:app_shell/shared/widgets/custtom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class DispensersView extends StatelessWidget {
  static const name = RoutesPaths.dispenserView;

  const DispensersView({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Módulo Digitación de Bombas'),
      ),
      drawer: SidemenuDispenser(scaffoldKey: scaffoldKey),
      bottomNavigationBar: const CustomBottomNavigation(),
      //body: const HomeViewBody(),
    );
  }
}
