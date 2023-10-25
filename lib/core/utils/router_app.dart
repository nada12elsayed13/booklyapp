import 'package:booklyapp/Features/home/presention/views/book_detail_view.dart';
import 'package:booklyapp/Features/home/presention/views/home_view.dart';
import 'package:booklyapp/Features/splash/presention/views/widgets/splashview.dart';

import 'package:go_router/go_router.dart';

abstract class RouteApp{
  static const khomeView = '/homeView';
  static const kBookDetailView = '/bookDetailView';
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
    GoRoute(
      path: kBookDetailView,
      builder: (context, state) =>const BookDetailView(),
    ),
  ],
);
}