import 'package:blood_bank/blocs/auth/authentication_bloc.dart';
import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:blood_bank/widgets/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'otp_page.dart';

class SignUpPage extends StatefulWidget {
  static String id = 'signup_screen';

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _phoneNumberController = TextEditingController();
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 13.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: CustomTextField(
                          controller: null,
                          onChanged: (value) {},
                          labelText: 'First Name',
                          suffixIcon: null,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: CustomTextField(
                          controller: null,
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
                      controller: null,
                      onChanged: (value) {},
                      labelText: 'NID Number',
                      suffixIcon: null),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                      controller: _phoneNumberController,
                      onChanged: (value) {
                        //phoneNumber = value;
                      },
                      labelText: 'Mobile Phone Number',
                      suffixIcon: null),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                      controller: null,
                      onChanged: (value) {},
                      labelText: 'Email',
                      suffixIcon: null),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: CustomTextField(
                          controller: null,
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
                          controller: null,
                          onChanged: (value) {},
                          labelText: 'Date of Birth',
                          suffixIcon: Icon(Icons.calendar_month),
                        ),
                      ),
                    ],
                  ),
                  CustomTextField(
                      controller: null,
                      onChanged: (value) {},
                      labelText: 'Location',
                      suffixIcon: null),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    controller: null,
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
                    child:
                        BlocListener<AuthenticationBloc, AuthenticationState>(
                      listener: (context, state) {
                        if (state is OTPReceivedState) {
                          Navigator.pushNamed(context, OTPPage.id);
                        }
                      },
                      child: CustomMaterialButton(
                        onPressed: () {
                          String phoneNumber = _phoneNumberController.text;
                          AuthenticationBloc authBloc = AuthenticationBloc();
                          authBloc.add(SendOTP(phoneNumber));
                          // Navigator.pushNamed(context, OTPPage.id);
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
