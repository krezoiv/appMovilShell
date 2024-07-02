import 'package:app_shell/features/auth/auth_exports_files.dart';
import 'package:app_shell/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:app_shell/features/settings/presentation/views/settings/screens/change_pass_view.dart';
import 'package:app_shell/features/settings/presentation/views/settings/screens/change_prices_view.dart';
import 'package:app_shell/features/settings/presentation/views/settings/screens/change_theme_view.dart';
import 'package:app_shell/features/settings/presentation/views/settings/screens/licences_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app_shell/features/shop/shop_exports_files.dart';
import 'package:app_shell/features/lubricants/lubricants_exports_files.dart';
import 'package:app_shell/features/lubricants/presentation/views/lubricants/screens/search_shop_lubricants.dart';
import 'package:app_shell/features/sales/sales_exports_files.dart';
import 'package:app_shell/features/dispensers/dispensers_exports_files.dart';
import 'package:app_shell/features/home/presentation/views/home/screens/home_view.dart';
import 'package:app_shell/features/settings/presentation/views/settings/screens/settings_view.dart';
// Asegúrate de que esta importación sea correcta

import '../const/routes_paths/routes_paths.dart';

final appRouter = GoRouter(
  initialLocation: '/home-view',
  routes: [
    GoRoute(
      path: '/home-view',
      builder: (context, state) => BlocBuilder<AuthBloc, AuthState>(
        builder: (context, authState) {
          if (authState.status == AuthStatus.authenticated) {
            return const HomeView();
          } else {
            return const HomeView();
          }
        },
      ),
    ),
    GoRoute(
      path: RoutesPaths.dispenserView,
      name: DispensersView.name,
      builder: (context, state) => const DispensersView(),
      routes: [
        GoRoute(
          path: RoutesPaths.newRegisterDispensers,
          name: WriteNumerationView.name,
          builder: (context, state) => const WriteNumerationView(),
        ),
        GoRoute(
          path: RoutesPaths.modifyRegisterDispensers,
          name: ModifyNumerationView.name,
          builder: (context, state) => const ModifyNumerationView(),
        ),
        GoRoute(
          path: RoutesPaths.deleteRegisterDispensers,
          name: DeleteNumerationView.name,
          builder: (context, state) => const DeleteNumerationView(),
        ),
        GoRoute(
          path: RoutesPaths.deleteAllRegisterDispensers,
          name: DeleteAllNumerationView.name,
          builder: (context, state) => const DeleteAllNumerationView(),
        ),
      ],
    ),
    GoRoute(
      path: RoutesPaths.salesView,
      name: SalesView.name,
      builder: (context, state) => const SalesView(),
      routes: [
        GoRoute(
          path: RoutesPaths.newSalesView,
          name: NewSaleView.name,
          builder: (context, state) => const NewSaleView(),
        ),
        GoRoute(
          path: RoutesPaths.modifySalesView,
          name: ModifySaleView.name,
          builder: (context, state) => const ModifySaleView(),
        ),
        GoRoute(
          path: RoutesPaths.deleteSalesView,
          name: DeleteSaleView.name,
          builder: (context, state) => const DeleteSaleView(),
        ),
        GoRoute(
          path: RoutesPaths.searchSalesView,
          name: SearchSaleView.name,
          builder: (context, state) => const SearchSaleView(),
        ),
      ],
    ),
    GoRoute(
      path: RoutesPaths.shopView,
      name: ShopView.name,
      builder: (context, state) => const ShopView(),
      routes: [
        GoRoute(
          path: RoutesPaths.deleteOrderShopView,
          name: DeleteOrderShopView.name,
          builder: (context, state) => const DeleteOrderShopView(),
        ),
        GoRoute(
          path: RoutesPaths.modifyOrderShopView,
          name: ModifyOrderShopView.name,
          builder: (context, state) => const ModifyOrderShopView(),
        ),
        GoRoute(
          path: RoutesPaths.newOrderShopView,
          name: NewOrderShopView.name,
          builder: (context, state) => const NewOrderShopView(),
        ),
        GoRoute(
          path: RoutesPaths.deleteShopView,
          name: DeleteShopView.name,
          builder: (context, state) => const DeleteShopView(),
        ),
        GoRoute(
          path: RoutesPaths.modifyShopView,
          name: ModifyShopView.name,
          builder: (context, state) => const ModifyShopView(),
        ),
        GoRoute(
          path: RoutesPaths.newShopView,
          name: NewShopView.name,
          builder: (context, state) => const NewShopView(),
        ),
      ],
    ),
    GoRoute(
      path: RoutesPaths.lubricantsView,
      name: LubricantsView.name,
      builder: (context, state) => const LubricantsView(),
      routes: [
        GoRoute(
          path: RoutesPaths.newShopLubricantsView,
          name: NewShopLubricantsView.name,
          builder: (context, state) => const NewShopLubricantsView(),
        ),
        GoRoute(
          path: RoutesPaths.modifyShopLubricantsView,
          name: ModifyShopLubricantsView.name,
          builder: (context, state) => const ModifyShopLubricantsView(),
        ),
        GoRoute(
          path: RoutesPaths.searchShopLubricantsView,
          name: SearchShopLubricantsView.name,
          builder: (context, state) => const SearchShopLubricantsView(),
        ),
        GoRoute(
          path: RoutesPaths.deleteShopLubricantsView,
          name: DeleteShopLubricantsView.name,
          builder: (context, state) => const DeleteShopLubricantsView(),
        ),
      ],
    ),
    GoRoute(
      path: RoutesPaths.settingsView,
      name: SettingsView.name,
      builder: (context, state) => const SettingsView(),
      routes: [
        GoRoute(
          path: RoutesPaths.changePriceView,
          name: ChangePricesView.name,
          builder: (context, state) => const ChangePricesView(),
        ),
        GoRoute(
          path: RoutesPaths.changePassView,
          name: ChangePassView.name,
          builder: (context, state) => const ChangePassView(),
        ),
        GoRoute(
          path: RoutesPaths.changeThemeView,
          name: ChangeThemeView.name,
          builder: (context, state) => const ChangeThemeView(),
        ),
        GoRoute(
          path: RoutesPaths.licenceView,
          name: LicencesView.name,
          builder: (context, state) => const LicencesView(),
        ),
      ],
    ),
  ],
);
