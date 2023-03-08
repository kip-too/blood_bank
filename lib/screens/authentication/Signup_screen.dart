import 'package:blood_bank/blocs/auth/authentication_bloc.dart';
import 'package:blood_bank/blocs/userdata/user_bloc.dart';
import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:blood_bank/widgets/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../models/user/user_info.dart';
import 'otp_page.dart';

class SignUpPage extends StatefulWidget {
  static String id = 'signup_screen';
  final UserInfo userInfo;

  const SignUpPage({Key? key, required this.userInfo}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool showSpinner = false;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final idNumberController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final emailController = TextEditingController();
  final genderController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final locationController = TextEditingController();
  final bloodGroupController = TextEditingController();

  late UserInfoBloc _userInfoBloc;
  late AuthenticationBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _userInfoBloc = UserInfoBloc();
  }

  @override
  void dispose() {
    _userInfoBloc.close();
    super.dispose();
  }

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
                    child: MultiBlocListener(
                      listeners: [
                        BlocListener<AuthenticationBloc, AuthenticationState>(
                          listener: (context, state) async {
                            print('Authentication state changed: //');
                            if (state is OTPReceivedState) {
                              print('Received OTP, navigating to OTP page');
                              // await Navigator.pushNamed(context, OTPPage.id);
                            }
                          },
                        ),
                        BlocListener<UserInfoBloc, UserInfoState>(
                          listener: (context, state) {
                            if (state is UserInfoSuccess) {
                              Navigator.pushNamed(context, OTPPage.id);
                            }
                          },
                        ),
                      ],
                      child: CustomMaterialButton(
                        onPressed: () async {
                          // AuthenticationBloc authBloc = AuthenticationBloc();
                          // authBloc.add(SendOTP(phoneNumber));
                          // print('Sent OTP request for phone number: ');
                          // await Navigator.pushNamed(context, OTPPage.id);
                          // print('Received OTP, navigating to OTP page');
                          String phoneNumber = mobileNumberController.text;
                          UserInfo userInfo = UserInfo(
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                            idNumber: idNumberController.text,
                            mobileNumber: mobileNumberController.text,
                            email: emailController.text,
                            gender: genderController.text,
                            dateOfBirth: dateOfBirthController.text,
                            location: locationController.text,
                            bloodGroup: bloodGroupController.text,
                          );
                          _userInfoBloc.add(SaveUserData(userInfo));
                          _authBloc.add(SendOTP(phoneNumber));
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
