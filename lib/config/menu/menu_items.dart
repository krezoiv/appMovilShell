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
      link: '/button',
      icon: Icons.border_color_outlined),
  MenuItem(
      title: 'Realizar Cierre',
      subTitle: "módulo de cuadre diario",
      link: '/button',
      icon: Icons.calculate_outlined),
  MenuItem(
      title: 'Realizar Compra',
      subTitle: "módulo de compras",
      link: '/button',
      icon: Icons.shopping_cart),
  MenuItem(
      title: 'Lubricantes',
      subTitle: "módulo de aceites & lubricantes",
      link: '/button',
      icon: Icons.oil_barrel_outlined),
  MenuItem(
      title: 'Ajustes',
      subTitle: "módulo de ajustes globales",
      link: '/button',
      icon: Icons.settings_outlined)
];
