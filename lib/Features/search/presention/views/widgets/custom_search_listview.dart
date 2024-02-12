import 'package:booklyapp/Features/home/presention/views/widgets/best_seller_listViewItem.dart';
import 'package:booklyapp/core/widget/customcircleindicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presention/manager/newst_Books_Cubit/newst_books_cubit_cubit.dart';

class CustomSearchListView extends StatelessWidget {
  const CustomSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubitCubit, NewstBooksCubitState>(
      builder: (context, state) {
        if (state is NewstBooksCubitSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListView(bookModel: state.books[index],),
              );
            },
          );
        } else if (state is NewstBooksCubitFailuer) {
          return ErrorWidget(state.erorMessage);
        } else {
          return const CustomCircleIndicator();
        }
      },
    );
  }
}
