import 'package:app_shell/config/menu/menu_items.dart';
import 'package:flutter/material.dart';

class CustomListTileHVB extends StatelessWidget {
  const CustomListTileHVB({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {},
    );
  }
}
