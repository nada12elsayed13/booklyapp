// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:booklyapp/core/utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.bakgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.size,
  }) : super(key: key);
  final Color bakgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: bakgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12))),
        child: Text(
          text,
          style: Styles.textstyle18
              .copyWith(color: textColor, fontWeight: FontWeight.w900,fontSize: size),
        ),
      ),
    );
  }
}
