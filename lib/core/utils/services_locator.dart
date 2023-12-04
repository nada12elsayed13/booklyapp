import 'package:booklyapp/Features/home/data/repos/home_repo_impelemt.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<HomeRepoIm>(
    HomeRepoIm(
      getIt.get<ApiService>()
    ),
  );
}
