import 'package:booklyapp/Features/home/data/repos/home_repo_impelemt.dart';
import 'package:booklyapp/Features/home/presention/manager/futer_Book_Cubit/feature_books_cubit_cubit.dart';
import 'package:booklyapp/Features/home/presention/manager/newst_Books_Cubit/newst_books_cubit_cubit.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/core/utils/router_app.dart';
import 'package:booklyapp/core/utils/services_locator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubitCubit(getIt.get<HomeRepoIm>()),
        ),
        BlocProvider(
          create: (context) => NewstBooksCubitCubit(getIt.get<HomeRepoIm>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: RouteApp.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
