import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Color(0XFFFFDD4F),),
        const SizedBox(width: 6.3,),
        const Text('4.8',style: Styles.textstyle16,),
        const SizedBox(width: 5,),
        Text('(254)',style: Styles.textstyle14.copyWith(color:const  Color(0XFF707070)),),
        
      ],
    );
  }
}
