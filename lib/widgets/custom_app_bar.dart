import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RichText(
              text: const TextSpan(
            text: 'Hello! Kiptoo',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontFamily: 'Manrope',
            ),
          )),
          const SizedBox(
            width: 200,
          ),
          const Icon(
            Icons.notifications,
          ),
        ],
      ),
    );
  }
}
