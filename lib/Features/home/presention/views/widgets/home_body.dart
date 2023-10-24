import 'package:booklyapp/Features/home/presention/views/widgets/custom_appBar.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/list%20viewItem.dart';
import 'package:booklyapp/core/utils/style.dart';

import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          ListViewItem(),
            SizedBox(height: 50,),
            Text('Best Seller',style: StylesText.styleText,)
        ],
      ),
    );
  }
}

