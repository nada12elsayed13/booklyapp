import 'package:booklyapp/Features/home/presention/views/home_view.dart';
import 'package:booklyapp/Features/splash/presention/views/widgets/splashview.dart';

import 'package:go_router/go_router.dart';

abstract class RouteApp{
  static const khomeView = '/homeView';
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>const SplashView(),
    ),
    GoRoute(
      path: khomeView,
      builder: (context, state) =>const HomeView(),
    ),
  ],
);
}