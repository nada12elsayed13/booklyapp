import 'package:booklyapp/Features/home/presention/views/widgets/customItem.dart';
import 'package:flutter/material.dart';

class BookListViewDetail extends StatelessWidget {
  const BookListViewDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*.15 ,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5),
          child:  CustomListViewItem(imagUrl: 'https://tse3.mm.bing.net/th/id/OIP.06Ki-ouE9nBjIKqZnVGfowHaHa?w=500&h=500&rs=1&pid=ImgDetMain',),
        );
      }),
    );
  }
}
