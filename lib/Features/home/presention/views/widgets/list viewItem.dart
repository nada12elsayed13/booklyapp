import 'package:booklyapp/Features/home/presention/manager/futer_Book_Cubit/feature_books_cubit_cubit.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/customItem.dart';
import 'package:booklyapp/core/widget/custom_errorMessage.dart';
import 'package:booklyapp/core/widget/customcircleindicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubitCubit, FeatureBooksCubitState>(
      builder: (context, state) {
        if (state is FeatureBooksCubitSucesses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                  physics:const BouncingScrollPhysics() ,
                  itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomListViewItem(imagUrl: state.books[index].volumeInfo.imageLinks.thumbnail,),
                  );
                }),
          );
        } else if (state is FeatureBooksCubitFailuer) {
          return CustomErrorMessage(errorMessage: state.errMessage);
        } else {
          return const CustomCircleIndicator();
        }
      },
    );
  }
}
