import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final Widget? suffixIcon;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: suffixIcon,
          suffixIconColor: CustomColors.secondaryColor,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9.0),
            borderSide: const BorderSide(
              color: CustomColors.secondaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9.0),
            borderSide: const BorderSide(
              color: CustomColors.secondaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
