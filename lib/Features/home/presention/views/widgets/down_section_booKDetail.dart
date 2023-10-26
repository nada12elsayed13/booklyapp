import 'package:booklyapp/Features/home/presention/views/widgets/book_detail_listView.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

class DownSection extends StatelessWidget {
  const DownSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textstyle14.copyWith(fontWeight: FontWeight.w600),
        ),
          const SizedBox(
            height: 16,
          ),
          const BookListViewDetail(),
      ],
    );
  }
}