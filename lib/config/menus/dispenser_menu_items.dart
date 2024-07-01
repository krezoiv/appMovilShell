import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/features/dispensers/presentation/views/dispensers/screens/dispensers_view.dart';
import 'package:flutter/material.dart';

class DispenserMenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const DispenserMenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const routeName = DispensersView.name;
const routeAdd = RoutesPaths.newRegisterDispensers;
const routeModify = RoutesPaths.modifyRegisterDispensers;
const routeDelete = RoutesPaths.deleteRegisterDispensers;
const routeDeleteAll = RoutesPaths.deleteAllRegisterDispensers;

const appDispenserMenuItems = <DispenserMenuItem>[
  DispenserMenuItem(
      title: 'Registrar Numeración',
      subTitle: "ingresar numeración",
      link: routeAdd,
      icon: Icons.filter_9_plus_rounded),
  DispenserMenuItem(
      title: 'Modifcar Numeración',
      subTitle: "modifcar dato",
      link: routeModify,
      icon: Icons.sync),
  DispenserMenuItem(
      title: 'Elminar Numeración',
      subTitle: "Eliminar dato",
      link: routeDelete,
      icon: Icons.delete_forever_outlined),
  DispenserMenuItem(
      title: 'Eliminación Competa',
      subTitle: "eliminar numeración completa",
      link: routeDeleteAll,
      icon: Icons.folder_delete_outlined),
];
