import 'package:app_shell/features/home/presentation/views/home/classes/home_view_body.dart';
import 'package:flutter/material.dart';

// Importa otros Blocs que necesites aquí
// import 'package:app_shell/features/some_feature/bloc/some_bloc.dart';

class HomeView extends StatelessWidget {
  static const name = 'home-view';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gasolinera Shell Lupita'),
      ),
      body: const HomeViewBody(),
    );
  }
}
