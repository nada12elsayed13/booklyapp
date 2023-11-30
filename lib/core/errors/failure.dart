import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(
    this.errorMessage,
  );
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connect Timeed Out With ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeed Out With ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeed Out With ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate With ApiServer");
      case DioExceptionType.badResponse:
        return ServerFailure.FromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request with ApiServer is Cancellled');
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error With ApiServer");
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketExeption')) {
          return ServerFailure("No Internet Connectio");
        }
        return ServerFailure('UnExpected Error,please try again');
      default:
        return ServerFailure('Oops There was an Error,please try later');
      
    }
  }
  factory ServerFailure.FromResponse(int stausCode, dynamic response) {
    if (stausCode == 400 || stausCode == 401 || stausCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (stausCode == 404) {
      return ServerFailure('Your response was not found,please try later');
    } else if (stausCode == 500) {
      return ServerFailure('Internal Server error,please try later');
    } else {
      return ServerFailure('Oops There was an Error,please try later');
    }
  }
}
