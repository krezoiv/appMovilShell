import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/features/shop/presentation/views/screens/shop_view.dart';
import 'package:flutter/material.dart';

class ShopMenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const ShopMenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const routeName = ShopView.name;
const routeAddOrder = RoutesPaths.newOrderShopView;
const routeModifyOrder = RoutesPaths.modifyOrderShopView;
const routeDeleteOrder = RoutesPaths.deleteOrderShopView;
const routeAddShop = RoutesPaths.newShopView;
const routeModifyShop = RoutesPaths.modifyShopView;
const routeDeleteShop = RoutesPaths.deleteShopView;

const appShopMenuItems = <ShopMenuItem>[
  ShopMenuItem(
      title: 'Gnerar Nueva Orden de Compra',
      subTitle: "nueva orden de compra",
      link: '$routeName/$routeAddOrder',
      icon: Icons.free_cancellation_rounded),
  ShopMenuItem(
      title: 'Modifcar Orden de Compra',
      subTitle: "modifcar orden",
      link: '$routeName/$routeModifyOrder',
      icon: Icons.sync),
  ShopMenuItem(
      title: 'Elminar Orden de compra',
      subTitle: "Eliminar orden",
      link: '$routeName/$routeDeleteOrder',
      icon: Icons.delete_forever_outlined),
  ShopMenuItem(
      title: 'Genrar Factura de Compra',
      subTitle: "nueva factura de compra",
      link: '$routeName/$routeAddShop',
      icon: Icons.shopping_cart),
  ShopMenuItem(
      title: 'Modificar Compra',
      subTitle: "modificar compra",
      link: '$routeName/$routeModifyShop',
      icon: Icons.sync),
  ShopMenuItem(
      title: 'Elimiar Compra',
      subTitle: "eliminar compra",
      link: '$routeName/$routeDeleteShop',
      icon: Icons.delete_outline_outlined),
];
