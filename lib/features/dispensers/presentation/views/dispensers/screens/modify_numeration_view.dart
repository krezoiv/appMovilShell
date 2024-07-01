import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/shared/widgets/custtom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class ModifyNumerationView extends StatelessWidget {
  static const name = RoutesPaths.modifyRegisterDispensers;
  const ModifyNumerationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modificar Numeración'),
      ),

      bottomNavigationBar: const CustomBottomNavigation(),
      //body: const HomeViewBody(),
    );
  }
}
