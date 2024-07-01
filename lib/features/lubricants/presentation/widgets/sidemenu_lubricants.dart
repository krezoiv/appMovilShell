import 'package:app_shell/features/lubricants/lubricants_exports_files.dart';

import 'package:flutter/material.dart';

class SideMenuLubricants extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenuLubricants({
    super.key,
    required this.scaffoldKey,
  });

  @override
  State<SideMenuLubricants> createState() => _SideMenuLubricantsState();
}

class _SideMenuLubricantsState extends State<SideMenuLubricants> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return CustomNavigationDrawerLubricants(
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
