part of 'feature_books_cubit_cubit.dart';

sealed class FeatureBooksCubitState extends Equatable {
  const FeatureBooksCubitState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksCubitInitial extends FeatureBooksCubitState {}

final class FeatureBooksCubitLoading extends FeatureBooksCubitState {}

final class FeatureBooksCubitFailuer extends FeatureBooksCubitState {
  final String errMessage;

  const FeatureBooksCubitFailuer(this.errMessage);
}

final class FeatureBooksCubitSucesses extends FeatureBooksCubitState {
  final List<BookModel> books;

  const FeatureBooksCubitSucesses(this.books);
}
