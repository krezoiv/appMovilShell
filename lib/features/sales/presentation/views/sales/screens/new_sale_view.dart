import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/shared/widgets/custtom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class NewSaleView extends StatelessWidget {
  static const name = RoutesPaths.newSalesView;
  const NewSaleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo DLP'),
      ),

      bottomNavigationBar: const CustomBottomNavigation(),
      //body: const HomeViewBody(),
    );
  }
}
