import 'package:app_shell/config/const/routes_paths/routes_paths.dart';
import 'package:app_shell/shared/widgets/custtom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class SearchSaleView extends StatelessWidget {
  static const name = RoutesPaths.searchSalesView;
  const SearchSaleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conusltar DLP'),
      ),

      bottomNavigationBar: const CustomBottomNavigation(),
      //body: const HomeViewBody(),
    );
  }
}
