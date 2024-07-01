import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/shared/widgets/custtom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class DeleteShopLubricantsView extends StatelessWidget {
  static const name = RoutesPaths.deleteShopLubricantsView;
  const DeleteShopLubricantsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eliminar factura'),
      ),

      bottomNavigationBar: const CustomBottomNavigation(),
      //body: const HomeViewBody(),
    );
  }
}
