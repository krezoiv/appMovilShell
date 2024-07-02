import 'package:app_shell/config/menus/menu_items.dart';
import 'package:app_shell/features/home/presentation/widgets/custom_list_tile_hvb.dart';
import 'package:app_shell/features/auth/presentation/widgets/customs/buttons/custom_filled_button.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...appMenuItems
            .map((menuItem) => CustomListTileHVB(menuItem: menuItem)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: CustomFilledButton(
            onPressed: () {
              // Aquí agregarás la lógica para cerrar sesión
            },
            text: 'Cerrar Sesión',
          ),
        ),
      ],
    );
  }
}
