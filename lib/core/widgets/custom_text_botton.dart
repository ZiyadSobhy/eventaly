import 'package:flutter/material.dart';

class CustomTextBottom extends StatelessWidget {
  const CustomTextBottom({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(text),
    );
  }
}
