import 'package:booklyapp/Features/home/presention/views/widgets/customDetailAppBar.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailAppBar(),
        ],
      ),
    );
  }
}