// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';

part 'feature_books_cubit_state.dart';

class FeatureBooksCubitCubit extends Cubit<FeatureBooksCubitState> {
  FeatureBooksCubitCubit(
    this.homeRepo,
  ) : super(FeatureBooksCubitInitial());

  final HomeRepo homeRepo;
  Future<void> featureBooks() async {
    emit(FeatureBooksCubitLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failuer) {
      emit(FeatureBooksCubitFailuer(failuer.errorMessage));
    }, (books) {
      emit(FeatureBooksCubitSucesses(books));
    });
  }
}
