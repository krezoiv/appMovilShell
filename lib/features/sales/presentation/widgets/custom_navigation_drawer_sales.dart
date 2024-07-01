import 'package:app_shell/config/menus/sales_menu_items.dart';
import 'package:app_shell/features/sales/presentation/views/sales/screens/sales_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomNavigationDrawerSales extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onDestinationSelected;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final bool hasNotch;

  const CustomNavigationDrawerSales({
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

        final menuItem = appSalesMenuItems[value];
        const nameRoute = SalesView.name;

        if (menuItem.link.startsWith('/$nameRoute/')) {
          // Si es una sub-ruta de dispensers-view, usamos la ruta completa
          context.go(menuItem.link);
        } else {
          // Para otras rutas, podemos usar goNamed si lo preferimos
          context.go(menuItem.link);
        }
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
        ...appSalesMenuItems.map((item) => NavigationDrawerDestination(
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
