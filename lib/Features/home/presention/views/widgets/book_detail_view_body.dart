import 'package:booklyapp/Features/home/presention/views/widgets/customDetailAppBar.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/down_section_booKDetail.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/top_section_bookDetail.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
            CustomBookDetailAppBar(),
            TopSection(),
            Expanded(
            child: SizedBox(
              height: 50,
            ),
          ),
          DownSection(),
            SizedBox(
            height: 40,
          ),
        ],
      ),
    ) ,
        )
      ],
    );
    
  }
}

