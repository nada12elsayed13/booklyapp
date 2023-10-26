import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: outLineTextField(),
        focusedBorder: outLineTextField(),
        hintText: 'Search',
        suffixIcon: IconButton(onPressed: () {}, icon:const Opacity(
          opacity: .8,
          child: Icon(FontAwesomeIcons.magnifyingGlass,size: 22)),)
      ),
    );
  }

  OutlineInputBorder outLineTextField() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide:const BorderSide(color: Colors.white),
      );
  }
}