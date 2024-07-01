import 'package:app_shell/features/sales/sales_exports_files.dart';
import 'package:flutter/material.dart';

class SidemenuSales extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SidemenuSales({
    super.key,
    required this.scaffoldKey,
  });

  @override
  State<SidemenuSales> createState() => _SidemenuSalesState();
}

class _SidemenuSalesState extends State<SidemenuSales> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return CustomNavigationDrawerSales(
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
