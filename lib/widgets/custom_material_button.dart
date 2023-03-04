import 'package:flutter/material.dart';

import '../configs/themes/app_theme.dart';

class CustomMaterialButton extends StatelessWidget {
  final Widget text;
  final VoidCallback onPressed;

  const CustomMaterialButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      textColor: Colors.white,
      color: CustomColors.primaryColor,
      height: 50,
      minWidth: 387,
      child: text,
    );
  }
}
