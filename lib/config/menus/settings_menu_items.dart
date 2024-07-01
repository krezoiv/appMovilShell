import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/features/settings/settings_exports_files.dart';
import 'package:flutter/material.dart';

class SettingsMenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const SettingsMenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const routeName = SettingsView.name;
const routeChangePrice = RoutesPaths.changePriceView;
const routeChangePass = RoutesPaths.changePassView;
const routeChangeTheme = RoutesPaths.changeThemeView;
const routeLicence = RoutesPaths.licenceView;

const appSettingsMenuItems = <SettingsMenuItem>[
  SettingsMenuItem(
      title: 'Cambio de Precios',
      subTitle: "cambiar precio de combustile",
      link: '$routeName/$routeChangePrice',
      icon: Icons.price_check_outlined),
  SettingsMenuItem(
      title: 'Cambiar Contraseña',
      subTitle: "modifcar contraseña",
      link: '$routeName/$routeChangePass',
      icon: Icons.password_outlined),
  SettingsMenuItem(
      title: 'Cambiar Tema',
      subTitle: "cambiar apariencia",
      link: '$routeName/$routeChangeTheme',
      icon: Icons.palette_outlined),
  SettingsMenuItem(
      title: 'licencia',
      subTitle: "licencias",
      link: '$routeName/$routeLicence',
      icon: Icons.manage_accounts_outlined),
];
