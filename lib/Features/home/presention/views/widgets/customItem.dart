// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:booklyapp/core/widget/customcircleindicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imagUrl,
          errorWidget: (context, url, error) =>const Icon(Icons.error),
          placeholder: (context, url) =>const CustomCircleIndicator(),
          )
      ),
    );
  }
}
