import 'package:app_shell/features/settings/presentation/widgets/custom_navigation_drawer.dart';

import 'package:flutter/material.dart';

class SidemenuSettings extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SidemenuSettings({
    super.key,
    required this.scaffoldKey,
  });

  @override
  State<SidemenuSettings> createState() => _SidemenuSettingsState();
}

class _SidemenuSettingsState extends State<SidemenuSettings> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return CustomNavigationDrawerSettings(
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
