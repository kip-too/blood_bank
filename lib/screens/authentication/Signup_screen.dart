import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:blood_bank/widgets/export_widgets.dart';
import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  static String id = 'signup_screen';

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
                  const Icon(
                    Icons.check_box,
                    color: CustomColors.primaryColor,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'Sign up as donor',
                      style: TextStyle(
                        color: CustomColors.textColor,
                      ),
                    ),
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
                  },
                  text: const Text(
                    'Sign Up',
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
                    RichText(
                        text: const TextSpan(
                            text: 'Already have an account?',
                            style: TextStyle(
                              color: CustomColors.textColor,
                            ))),
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
