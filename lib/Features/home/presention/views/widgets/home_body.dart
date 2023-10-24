import 'package:booklyapp/Features/home/presention/views/widgets/custom_appBar.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/list%20viewItem.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/style.dart';


import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          ListViewItem(),
            SizedBox(height: 50,),
            Text('Best Seller',style: Styles.textstyle18,),
              SizedBox(height: 20,),
            BestSellerListView(),
        ],
      ),
    );
  }
}
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
    Column(
      children: [
          SizedBox(
            width: MediaQuery.of(context).size.width*.5,
            child:const Text('Harry Potter and the Goblet of Fire',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textstyle20,),
          )
      ],
    )
        ],
      ));
  }
}

