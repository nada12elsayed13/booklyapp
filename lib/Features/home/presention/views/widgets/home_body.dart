import 'package:booklyapp/Features/home/presention/views/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
      ],
    );
  }
}
