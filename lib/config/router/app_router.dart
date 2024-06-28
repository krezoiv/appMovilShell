import "package:app_shell/features/auth/login/presentation/views/auth_screens_exports_files.dart";
import "package:go_router/go_router.dart";

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const LoginView(),
  )
]);
