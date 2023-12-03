part of 'newst_books_cubit_cubit.dart';

sealed class NewstBooksCubitState extends Equatable {
  const NewstBooksCubitState();

  @override
  List<Object> get props => [];
}

final class NewstBooksCubitInitial extends NewstBooksCubitState {}

final class NewstBooksCubitLoading extends NewstBooksCubitState {}

final class NewstBooksCubitSuccess extends NewstBooksCubitState {
  final List<BookModel> books;

  const NewstBooksCubitSuccess(this.books);
}

final class NewstBooksCubitFailuer extends NewstBooksCubitState {
  final String erorMessage;

  const NewstBooksCubitFailuer(this.erorMessage);
}
