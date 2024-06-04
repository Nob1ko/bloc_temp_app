import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template_app_bloc/routes/routes.dart';
import 'package:template_app_bloc/views/auth/login/login_view.dart';
import 'package:template_app_bloc/views/auth/password/update_password_view.dart';
import 'package:template_app_bloc/views/auth/register/register_view.dart';
import 'package:template_app_bloc/views/home/home_view.dart';
import 'package:template_app_bloc/views/navigation/navigation_view.dart';
import 'package:template_app_bloc/views/profile/profile_view.dart';
import 'package:template_app_bloc/views/splash/splash_view.dart';

class AppRoutes {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  // static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: _rootNavigatorKey,
      initialLocation: Routes.ROOT,
      routes: [
        GoRoute(
          path: Routes.ROOT,
          builder: (context, state) => const SplashView(),
        ),
        GoRoute(
          path: Routes.HOME_PAGE,
          builder: (context, state) => const HomeView(),
        ),
        GoRoute(
          path: Routes.AUTH,
          builder: (context, state) => const LoginView(),
        ),
        GoRoute(
          path: Routes.REGISTER,
          builder: (context, state) => const RegisterView(),
        ),
        GoRoute(
            path: Routes.NAVIGATION,
            builder: (context, state) => const NavigationView()),
        GoRoute(
            path: Routes.PROFILE,
            builder: (context, state) => const ProfileView()),
        // GoRoute(
        //     path: Routes.FORGOT_PASSWORD,
        //     builder: (context, state) {
        //       ForgotPasswordRoutesModel extra =
        //           state.extra as ForgotPasswordRoutesModel;
        //       return ForgotPasswordView(
        //           textEditingController: extra.textEditingController,
        //           forgotPasswordListener: extra.forgotPasswordListener);
        //     }),
        GoRoute(
            path: Routes.UPDATE_PASSWORD,
            builder: (context, state) => const UpdatePasswordView()),
      ]);

  static GoRouter get router => _router;
}
