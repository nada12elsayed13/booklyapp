// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:booklyapp/core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    Key? key,
    required this.imagUrl,
  }) : super(key: key);
  final String imagUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          image:  DecorationImage(
              image: NetworkImage(imagUrl), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(16),
          
        ),
      ),
    );
  }
}
