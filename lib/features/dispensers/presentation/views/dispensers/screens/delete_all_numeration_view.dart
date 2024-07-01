import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/shared/widgets/custtom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class DeleteAllNumerationView extends StatelessWidget {
  static const name = RoutesPaths.deleteAllRegisterDispensers;
  const DeleteAllNumerationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eliminar Numeración Completa'),
      ),

      bottomNavigationBar: const CustomBottomNavigation(),
      //body: const HomeViewBody(),
    );
  }
}
