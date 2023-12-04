import 'package:booklyapp/Features/home/presention/views/widgets/BooksAction.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/book_rate.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/customItem.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
      var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child:const  CustomListViewItem(imagUrl: 'https://tse3.mm.bing.net/th/id/OIP.06Ki-ouE9nBjIKqZnVGfowHaHa?w=500&h=500&rs=1&pid=ImgDetMain',),
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
      ],
    );
  }
}