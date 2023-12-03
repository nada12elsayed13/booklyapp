// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:booklyapp/core/errors/failure.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/api_service.dart';

class HomeRepoIm implements HomeRepo {
  final ApiService abiService;
  HomeRepoIm(this.abiService);
  @override
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewstBooks() async {
    try {
      var data = await abiService.get('',
          endPoint:
              'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks()async {
    try {
      var data = await abiService.get('',
          endPoint:
              'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}
