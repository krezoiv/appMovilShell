import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/features/shop/presentation/widgets/sidemenu_shop.dart';
import 'package:app_shell/shared/widgets/custtom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class ShopView extends StatelessWidget {
  static const name = RoutesPaths.shopView;
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Módulo de Compras'),
      ),
      drawer: SidemenuShop(scaffoldKey: scaffoldKey),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
