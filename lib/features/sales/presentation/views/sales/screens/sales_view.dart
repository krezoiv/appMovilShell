import 'package:flutter/material.dart';

class OrdersView extends StatelessWidget {
  static const name = 'sales-view';
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Módulo de Cuadres'),
      ),
      //body: const HomeViewBody(),
    );
  }
}
