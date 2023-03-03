import 'package:flutter/material.dart';

import '../../configs/images/urls.dart';
import '../../configs/themes/app_theme.dart';
import '../../widgets/export_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const CustomTextField(
                labelText: 'Select Hospital',
                suffixIcon: Icon(
                  Icons.local_hospital_sharp,
                ),
              ),
              const CustomTextField(
                labelText: 'Select Blood Group',
                suffixIcon: Icon(
                  Icons.water_drop_rounded,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, right: 3),
                child: CustomMaterialButton(
                  onPressed: () {},
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
    );
  }
}
