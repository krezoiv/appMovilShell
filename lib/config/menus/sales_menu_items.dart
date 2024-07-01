import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/features/sales/presentation/views/sales/screens/sales_view.dart';
import 'package:flutter/material.dart';

class SalesMenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const SalesMenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const routeName = SalesView.name;
const routeAdd = RoutesPaths.newSalesView;
const routeModify = RoutesPaths.modifySalesView;
const routeDelete = RoutesPaths.deleteSalesView;
const routeSearch = RoutesPaths.searchSalesView;

const appSalesMenuItems = <SalesMenuItem>[
  SalesMenuItem(
      title: 'DLP',
      subTitle: "registrar venta diaria",
      link: '/$routeName/$routeAdd',
      icon: Icons.sailing),
  SalesMenuItem(
      title: 'Modifcar DLP',
      subTitle: "modifcar venta diaria",
      link: '/$routeName/$routeModify',
      icon: Icons.sync),
  SalesMenuItem(
      title: 'Elminar DLP',
      subTitle: "eliminar dlp",
      link: '/$routeName/$routeDelete',
      icon: Icons.delete_forever_outlined),
  SalesMenuItem(
      title: 'Buscar DLPs',
      subTitle: "consulta de DLP",
      link: '/$routeName/$routeSearch',
      icon: Icons.chat_rounded)
];
