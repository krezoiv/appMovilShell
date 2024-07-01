import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/features/lubricants/presentation/views/lubricants/screens/lubricants_view.dart';
import 'package:flutter/material.dart';

class LubricantsMenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const LubricantsMenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const routeName = LubricantsView.name;
const routeAdd = RoutesPaths.newShopLubricantsView;
const routeModify = RoutesPaths.modifyShopLubricantsView;
const routeSearch = RoutesPaths.searchShopLubricantsView;
const routeDelete = RoutesPaths.deleteShopLubricantsView;

const appLubricantsMenuItems = <LubricantsMenuItem>[
  LubricantsMenuItem(
      title: 'Agregar Compra',
      subTitle: "nueva compra de lubricantes",
      link: '$routeName/$routeAdd',
      //link: '/lubricants-view/new-shop-lubricants-view',
      icon: Icons.shop_2_outlined),
  LubricantsMenuItem(
      title: 'Modifcar Comprar',
      subTitle: "modifcar factura",
      link: '$routeName/$routeModify',
      icon: Icons.sync),
  LubricantsMenuItem(
      title: 'Buscar Factura',
      subTitle: "consulta de facturas",
      link: '$routeName/$routeSearch',
      icon: Icons.chat_rounded),
  LubricantsMenuItem(
      title: 'Elminar Comprar',
      subTitle: "Eliminar factura",
      link: '$routeName/$routeDelete',
      icon: Icons.delete_forever_outlined),
];
