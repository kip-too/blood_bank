import 'package:blood_bank/configs/images/blood_groups.dart';
import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:flutter/material.dart';

class BloodGroups extends StatelessWidget {
  const BloodGroups({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.strokeColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(children: [
              RichText(
                text: const TextSpan(
                    text: 'Blood Needed',
                    style: TextStyle(
                      color: CustomColors.textColor,
                      fontFamily: 'Manrope',
                      fontSize: 15,
                    )),
              ),
              const SizedBox(
                width: 175,
              ),
              const Icon(
                Icons.location_on,
                color: CustomColors.primaryColor,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Rongai',
                  style: TextStyle(
                    color: CustomColors.textColor,
                    fontFamily: 'Manrope',
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 28,
                  height: 40,
                  decoration: BoxDecoration(
                    // image:
                    //     const DecorationImage(image: NetworkImage(testImage)),
                    color: CustomColors.backgroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: const [
                      Image(
                        image: NetworkImage(aPositive),
                        height: 24,
                        width: 24,
                      ),
                      Text(
                        'A+',
                        style: TextStyle(
                          color: CustomColors.textColor,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: 28,
                    height: 40,
                    decoration: BoxDecoration(
                      // image:
                      //     const DecorationImage(image: NetworkImage(testImage)),
                      color: CustomColors.backgroundColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: const [
                        Image(
                          image: NetworkImage(groupB),
                          height: 24,
                          width: 24,
                        ),
                        Text(
                          'B+',
                          style: TextStyle(
                            color: CustomColors.textColor,
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ],
                    )),
                Container(
                  width: 28,
                  height: 40,
                  decoration: BoxDecoration(
                    // image:
                    //     const DecorationImage(image: NetworkImage(testImage)),
                    color: CustomColors.backgroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: const [
                      Image(
                        image: NetworkImage(groupAB),
                        height: 24,
                        width: 24,
                      ),
                      Text(
                        'AB-',
                        style: TextStyle(
                          color: CustomColors.textColor,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 28,
                  height: 40,
                  decoration: BoxDecoration(
                    // image:
                    //     const DecorationImage(image: NetworkImage(testImage)),
                    color: CustomColors.backgroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: const [
                      Image(
                        image: NetworkImage(aNegative),
                        height: 24,
                        width: 24,
                      ),
                      Text(
                        'A-',
                        style: TextStyle(
                          color: CustomColors.textColor,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 28,
                  height: 40,
                  decoration: BoxDecoration(
                    // image:
                    //     const DecorationImage(image: NetworkImage(testImage)),
                    color: CustomColors.backgroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: const [
                      Image(
                        image: NetworkImage(oPositive),
                        height: 24,
                        width: 24,
                      ),
                      Text(
                        'O-',
                        style: TextStyle(
                          color: CustomColors.textColor,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 28,
                  height: 40,
                  decoration: BoxDecoration(
                    // image:
                    //     const DecorationImage(image: NetworkImage(testImage)),
                    color: CustomColors.backgroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: const [
                      Image(
                        image: NetworkImage(groupB),
                        height: 24,
                        width: 24,
                      ),
                      Text(
                        'B+',
                        style: TextStyle(
                          color: CustomColors.textColor,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
