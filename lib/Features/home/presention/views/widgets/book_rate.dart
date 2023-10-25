// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:booklyapp/core/utils/style.dart';

class BookRate extends StatelessWidget {
  const BookRate({
    Key? key,
      this.mainAxisAlignment=MainAxisAlignment.start,
  }) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:mainAxisAlignment ,
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Color(0XFFFFDD4F),size: 14,),
        const SizedBox(width: 6.3,),
        const Text('4.8',style: Styles.textstyle16,),
        const SizedBox(width: 5,),
        Opacity(
          opacity: .5,
          child: Text('(254)',style: Styles.textstyle14.copyWith(fontWeight:FontWeight.w600),)),
        
      ],
    );
  }
}
