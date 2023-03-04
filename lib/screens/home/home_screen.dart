import 'package:blood_bank/screens/authentication/otp_page.dart';
import 'package:blood_bank/screens/searchdonor/search_donor.dart';
import 'package:flutter/material.dart';

import '../../configs/images/urls.dart';
import '../../configs/themes/app_theme.dart';
import '../../widgets/export_widgets.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CustomAppBar(),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      text: 'Are you looking for blood?',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Manrope',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                CustomTextField(
                  controller: null,
                  onChanged: (value) {},
                  labelText: 'Select Hospital',
                  suffixIcon: const Icon(
                    Icons.local_hospital_sharp,
                  ),
                ),
                CustomTextField(
                  controller: null,
                  onChanged: (value) {},
                  labelText: 'Select Blood Group',
                  suffixIcon: const Icon(
                    Icons.water_drop_rounded,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3, right: 3),
                  child: CustomMaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SearchDonorScreen.id);
                    },
                    text: const Text('Send Request'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const PostRequestDonor(),
                const SizedBox(
                  height: 10,
                ),
                const BloodGroups(),
              ]),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
