import 'package:flutter/material.dart';
import '../resources/color_manger/color_manger.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    required this.predixIcons,
    this.isSecure = false,
    this.suffixIcons,
    this.onClick,
  });

  final String text;
  final IconData predixIcons;
  final bool isSecure;
  final IconData? suffixIcons;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecure,
      decoration: InputDecoration(
        labelText: text,
        prefixIcon: Icon(predixIcons, color: ColorMangers.gray),
        suffixIcon: suffixIcons != null
            ? IconButton(onPressed: onClick, icon: Icon(suffixIcons))
            : null,
      ),
    );
  }
}
