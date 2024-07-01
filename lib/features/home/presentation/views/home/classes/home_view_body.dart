import 'package:app_shell/config/menus/menu_items.dart';
import 'package:app_shell/features/home/presentation/widgets/custom_list_tile_hvb.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) {
          final menuItem = appMenuItems[index];

          return CustomListTileHVB(menuItem: menuItem);
        });
  }
}
