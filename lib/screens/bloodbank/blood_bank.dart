import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:blood_bank/widgets/bloood_groups.dart';
import 'package:blood_bank/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';

class BloodBankPage extends StatelessWidget {
  static String id = 'Blood_Bank';
  const BloodBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            RichText(
              text: const TextSpan(
                  text: 'Quantum Blood Bank',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 15,
                    color: CustomColors.textColor,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 450,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(147, 5, 19, 1),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/bloodbank2.png')),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: const TextSpan(
                      text: 'Location',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 15,
                        color: CustomColors.textColor,
                      )),
                ),
                RichText(
                  text: const TextSpan(
                      text: 'Nairobi',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 15,
                        color: CustomColors.textColor,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: const TextSpan(
                      text: 'Phone Number',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 15,
                        color: CustomColors.textColor,
                      )),
                ),
                RichText(
                  text: const TextSpan(
                      text: '+2547863446277',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 15,
                        color: CustomColors.textColor,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: const TextSpan(
                    text: 'Blood Bank stock',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 15,
                      color: CustomColors.textColor,
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const BloodGroups(),
          ],
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
