import 'package:booklyapp/Features/home/presention/views/widgets/customDetailAppBar.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/customItem.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.17),
            child:const CustomListViewItem(),
          )
        ],
      ),
    );
  }
}
