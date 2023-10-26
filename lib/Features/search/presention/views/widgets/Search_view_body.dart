import 'package:booklyapp/Features/search/presention/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child:  Column(
        children: [
          CustomTextField(),
        ],
      ),
    );
  }
}
