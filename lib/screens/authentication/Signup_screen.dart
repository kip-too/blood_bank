//import 'package:blood_bank/blocs/userdata/user_bloc.dart';
import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:blood_bank/repositories/userrepsitory/user_repository.dart';
import 'package:blood_bank/repositories/userrepsitory/user_repository_impl.dart';
import 'package:blood_bank/screens/exports_screens.dart';
import 'package:blood_bank/services/user_info_service.dart';
import 'package:blood_bank/widgets/export_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../models/user/user_info.dart';
import 'otp_page.dart';

class SignUpPage extends StatefulWidget {
  static String id = 'signup_screen';
  // final UserInfo userInfo;

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final idNumberController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final emailController = TextEditingController();
  final genderController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final locationController = TextEditingController();
  final bloodGroupController = TextEditingController();
  bool _donor = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: CustomTextField(
                      controller: firstNameController,
                      onChanged: (value) {
                        //firstName = value;
                      },
                      labelText: 'First Name',
                      suffixIcon: null,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomTextField(
                      controller: lastNameController,
                      onChanged: (value) {},
                      labelText: 'Last Name',
                      suffixIcon: null,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                  controller: idNumberController,
                  onChanged: (value) {},
                  labelText: 'NID Number',
                  suffixIcon: null),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                  controller: mobileNumberController,
                  onChanged: (value) {
                    //phoneNumber = value;
                  },
                  labelText: 'Mobile Phone Number',
                  suffixIcon: null),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                  controller: emailController,
                  onChanged: (value) {},
                  labelText: 'Email',
                  suffixIcon: null),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CustomTextField(
                      controller: genderController,
                      onChanged: (value) {},
                      labelText: 'Gender',
                      suffixIcon: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomTextField(
                      controller: dateOfBirthController,
                      onChanged: (value) {},
                      labelText: 'Date of Birth',
                      suffixIcon: Icon(Icons.calendar_month),
                    ),
                  ),
                ],
              ),
              CustomTextField(
                  controller: locationController,
                  onChanged: (value) {},
                  labelText: 'Location',
                  suffixIcon: null),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                controller: bloodGroupController,
                onChanged: (value) {},
                labelText: 'Blood Group',
                suffixIcon: Icon(Icons.arrow_drop_down),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _donor,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _donor = newValue!;
                      });
                    },
                    
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomMaterialButton(
                  onPressed: () async {
                    String mobileNumber = mobileNumberController.text;

                    print('Sent OTP request for phone number:$mobileNumber ');

                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                  text: const Text(
                    'Upload',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Manrope',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: RichText(
                        text: const TextSpan(
                          text: 'Sign In',
                          style: TextStyle(
                            color: CustomColors.textColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
