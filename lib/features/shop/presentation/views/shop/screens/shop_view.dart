import 'package:flutter/material.dart';

class ShopView extends StatelessWidget {
  static const name = 'shop-view';
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Módulo de Compras'),
      ),
      //body: const HomeViewBody(),
    );
  }
}
