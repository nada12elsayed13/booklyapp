import 'package:booklyapp/Features/home/presention/views/widgets/book_rate.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
      aspectRatio: 2.5/4,
      child: Container(
        decoration: BoxDecoration(
          image:const DecorationImage(image: AssetImage(Asset2.testImage),fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(8),
          color: Colors.red,
        ),
      ),
    ),
    const SizedBox(width: 30,),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            SizedBox(
              width: MediaQuery.of(context).size.width*.5,
              child: Text('Harry Potter and the Goblet of Fire',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textstyle20.copyWith(fontFamily: KGTSectraFine),),
            ),
            const SizedBox(height:3),
            const Text('J.K Rowling',style:Styles.textstyle14,),
            const SizedBox(height:3),
            Row(
              children: [
                Text(r'19.99 $',style: Styles.textstyle20.copyWith(fontWeight: FontWeight.bold),),
                const Spacer(),
                const BookRate(),
              ],
            )
        ],
      ),
    )
        ],
      ));
  }
}

