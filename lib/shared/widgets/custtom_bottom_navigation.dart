import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        // Navegar a Categorías
        context.go('/'); // Asegúrate de tener esta ruta definida
        break;
      case 1:
        // Navegar a Inicio
        context
            .go(RoutesPaths.homeView); // Asumiendo que '/' es tu ruta de inicio
        break;
      case 2:
        // Navegar a Favoritos
        context.go('/'); // Asegúrate de tener esta ruta definida
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.label_outline), label: 'Categorías'),
        BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'Inicio'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline), label: 'Favoritos'),
      ],
      onTap: (index) => _onItemTapped(context, index),
    );
  }
}
