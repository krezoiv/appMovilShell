import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/features/lubricants/presentation/widgets/sidemenu_lubricants.dart';
import 'package:app_shell/shared/widgets/custtom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class LubricantsView extends StatelessWidget {
  static const name = RoutesPaths.lubricantsView;
  const LubricantsView({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffold = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffold,
      appBar: AppBar(
        title: const Text('Módulo de Lubricantes'),
      ),
      drawer: SideMenuLubricants(scaffoldKey: scaffold),
      bottomNavigationBar: const CustomBottomNavigation(),
      //body: const HomeViewBody(),
    );
  }
}
