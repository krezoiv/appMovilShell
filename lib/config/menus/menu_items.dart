import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Digitar Bombas',
      subTitle: "módulo de enumeración de bombas",
      link: RoutesPaths.dispenserView,
      icon: Icons.border_color_outlined),
  MenuItem(
      title: 'Realizar Cierre',
      subTitle: "módulo de cuadre diario",
      link: RoutesPaths.salesView,
      icon: Icons.calculate_outlined),
  MenuItem(
      title: 'Realizar Compra',
      subTitle: "módulo de compras",
      link: RoutesPaths.shopView,
      icon: Icons.shopping_cart),
  MenuItem(
      title: 'Lubricantes',
      subTitle: "módulo de aceites & lubricantes",
      link: RoutesPaths.lubricantsView,
      icon: Icons.oil_barrel_outlined),
  MenuItem(
      title: 'Ajustes',
      subTitle: "módulo de ajustes globales",
      link: RoutesPaths.settingsView,
      icon: Icons.settings_outlined)
];
