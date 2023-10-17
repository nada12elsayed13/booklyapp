import 'package:flutter/material.dart';

class SlideAnimation extends StatelessWidget {
  const SlideAnimation({
    super.key,
    required this.sildeAnimation,
  });

  final Animation<Offset> sildeAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sildeAnimation,
      builder: (context,_) {
        return SlideTransition(
          position: sildeAnimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        );
      }
    );
  }
}