import 'package:flutter/material.dart';

import '../configs/images/urls.dart';
import '../configs/themes/app_theme.dart';

class PostRequestDonor extends StatelessWidget {
  const PostRequestDonor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          child: Container(
            width: 100,
            height: 150,
            decoration: BoxDecoration(
              color: CustomColors.backgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: const [
                Image(
                  image: AssetImage('assets/icons/note.png'),
                ),
                Text(
                  'Post Blood Request',
                  style: TextStyle(
                    color: CustomColors.textColor,
                    fontFamily: 'Manrope',
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          child: Container(
            width: 100,
            height: 150,
            decoration: BoxDecoration(
              // image:
              //     const DecorationImage(image: NetworkImage(testImage)),
              color: CustomColors.backgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: const [
                Image(image: AssetImage('assets/icons/first_aid.png')),
                Text(
                  'Blood Bank',
                  style: TextStyle(
                    color: CustomColors.textColor,
                    fontFamily: 'Manrope',
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          child: Container(
            width: 100,
            height: 150,
            decoration: BoxDecoration(
              // image:
              //     const DecorationImage(image: NetworkImage(testImage)),
              color: CustomColors.backgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: const [
                Image(
                  image: AssetImage('assets/icons/emergency.png'),
                ),
                Text(
                  'Emergency Donors',
                  style: TextStyle(
                    color: CustomColors.textColor,
                    fontFamily: 'Manrope',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
