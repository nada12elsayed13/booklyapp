import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*.3 ,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          decoration: BoxDecoration(
            image:const DecorationImage(image: AssetImage(Asset2.testImage),fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

