import 'package:flutter/material.dart';
import 'package:app_shell/features/dispensers/presentation/widgets/custom_navigation_drawer_dispenser.dart';

class SidemenuDispenser extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SidemenuDispenser({
    super.key,
    required this.scaffoldKey,
  });

  @override
  State<SidemenuDispenser> createState() => _SidemenuDispenserState();
}

class _SidemenuDispenserState extends State<SidemenuDispenser> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return CustomNavigationDrawerDispenser(
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
