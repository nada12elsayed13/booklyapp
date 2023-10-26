import 'package:booklyapp/Features/home/presention/views/widgets/BooksAction.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/book_detail_listView.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/book_rate.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/customDetailAppBar.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/customItem.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomListViewItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textstyle30.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textstyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRate(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BookAction(),
          const Expanded(
            child: SizedBox(
              height: 50,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textstyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const BookListViewDetail(),
          const SizedBox(
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
