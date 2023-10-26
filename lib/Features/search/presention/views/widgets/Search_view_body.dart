import 'package:booklyapp/Features/search/presention/views/widgets/custom_search_listview.dart';
import 'package:booklyapp/Features/search/presention/views/widgets/custom_search_textfield.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
          SizedBox(height: 16,),
          Text(
                  'Search Reasult',
                  style: Styles.textstyle18,
                ),
          SizedBox(height: 16,),
          Expanded(child: CustomSearchListView()),
        ],
      ),
    );
  }
}
