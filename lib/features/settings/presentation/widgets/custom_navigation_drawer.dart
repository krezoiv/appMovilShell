import 'package:app_shell/config/menus/settings_menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNavigationDrawerSettings extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onDestinationSelected;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final bool hasNotch;

  const CustomNavigationDrawerSettings({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.scaffoldKey,
    this.hasNotch = false,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: selectedIndex,
      onDestinationSelected: (value) {
        onDestinationSelected(value);

        final menuItem = appSettingsMenuItems[value];
        context.push(menuItem.link);
        scaffoldKey.currentState?.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10),
          child: Text(
            'Opciones de Registro',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        ...appSettingsMenuItems.map((item) => NavigationDrawerDestination(
              icon: Icon(item.icon),
              label: Text(item.title),
            )),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),
      ],
    );
  }
}
