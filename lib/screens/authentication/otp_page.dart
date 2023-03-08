import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:blood_bank/models/user/user_info.dart';
import 'package:blood_bank/screens/exports_screens.dart';
import 'package:blood_bank/widgets/export_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/auth/authentication_bloc.dart';
import '../../blocs/userdata/user_bloc.dart';
import '../../repositories/userrepsitory/user_repository_impl.dart';
import '../../services/user_info_service.dart';

class OTPPage extends StatefulWidget {
  static String id = 'otp_screen';
  const OTPPage({Key? key}) : super(key: key);

  @override
  OTPPageState createState() => OTPPageState();
}

class OTPPageState extends State<OTPPage> {
  late String verificationId;
  final TextEditingController _otpController = TextEditingController();
  AuthenticationBloc _authBloc = AuthenticationBloc();
  late UserInfoBloc _userInfoBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = AuthenticationBloc();
  }

  @override
  void dispose() {
    _userInfoBloc.close();
    _authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'Enter Your Verification Code ',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Manrope',
                  color: CustomColors.textColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              TextField(
                // onChanged: (value) {
                //   verificationId = value;
                // },
                controller: _otpController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Verification code',
                ),
              ),
              const SizedBox(height: 16.0),
              MultiBlocListener(
                listeners: [
                  BlocListener<AuthenticationBloc, AuthenticationState>(
                    listener: (context, state) async {
                      if (state is SuccessAuthState) {
                        Navigator.pushNamed(context, HomeScreen.id);
                        print('Naviagting to homescreen');
                      }
                    },
                  ),
                ],
                child: CustomMaterialButton(
                    onPressed: () async {
                      String otp = _otpController.text;
                      _authBloc.add(VerifyOTP(verificationId, otp));
                      print('Verifying otp code: //');
                    },
                    text: const Text('Continue')),
              ),
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  // Handle resend OTP logic here
                },
                child: const Text(
                  'Resend OTP',
                  style: TextStyle(
                    color: CustomColors.textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
