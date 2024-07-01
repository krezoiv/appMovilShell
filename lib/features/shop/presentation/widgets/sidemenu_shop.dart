import 'package:app_shell/features/shop/presentation/widgets/custom_navigation_drawer_shop.dart';
import 'package:flutter/material.dart';

class SidemenuShop extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SidemenuShop({
    super.key,
    required this.scaffoldKey,
  });

  @override
  State<SidemenuShop> createState() => _SidemenuShopState();
}

class _SidemenuShopState extends State<SidemenuShop> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return CustomNavigationDrawerShop(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
      },
      scaffoldKey: widget.scaffoldKey,
      hasNotch: hasNotch,
    );
  }
}
