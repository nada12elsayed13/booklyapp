// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';

part 'newst_books_cubit_state.dart';

class NewstBooksCubitCubit extends Cubit<NewstBooksCubitState> {
  NewstBooksCubitCubit(
    this.homeRepo,
  ) : super(NewstBooksCubitInitial());

  final HomeRepo homeRepo;
  Future<void> newstBooks() async {
    emit(NewstBooksCubitLoading());
    var result = await homeRepo.fetchNewstBooks();
    result.fold((failuer) {
      emit(NewstBooksCubitFailuer(failuer.errorMessage));
    }, (books) {
      emit(NewstBooksCubitSuccess(books));
    });
  }
}
