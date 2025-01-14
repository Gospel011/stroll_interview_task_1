import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stroll/presentation/pages/app_pages/home.dart';
import 'package:stroll/utils/enums/app_routes.dart';
import 'package:stroll/utils/helpers/logger.dart';

class AppRouterConfig {
  AppRouterConfig();

  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  final goRouter = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/${AppRoutes.home.path}',
      routes: [
        //? HOME ROUTES
        GoRoute(
            name: AppRoutes.home.name,
            path: "/${AppRoutes.home.path}",
            builder: (context, state) {
              return const Home();
            }),
      ],
      redirect: (context, state) {
        // would be dynamically set from the auth_cubit
        bool isLoggedIn = true;
        String currentLocation = state.matchedLocation;

        log.i("Current location $currentLocation is logged in $isLoggedIn");

        // redirect user to the home screen if they are already logged in

        /**
         * redirect user back to the login screen if they are not logged in
         * but want to access a protected route (useful incase of app links)
        */
        

        return null;
      });

  GoRouter get router {
    return goRouter;
  }
}
