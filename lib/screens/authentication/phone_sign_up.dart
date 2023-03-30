import 'package:blood_bank/screens/authentication/user_data_entry.dart';
import 'package:blood_bank/services/auth_service.dart';
import 'package:blood_bank/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

import '../../configs/themes/app_theme.dart';

class PhoneSignUp extends StatefulWidget {
  static String id = "Phone_SignUp";
  const PhoneSignUp({Key? key}) : super(key: key);

  @override
  State<PhoneSignUp> createState() => _PhoneSignUpState();
}

class _PhoneSignUpState extends State<PhoneSignUp> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  final Auth _auth = Auth();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(image:AssetImage("assets/images/logo.jpeg"),
                  ),
                ),
              ),
            ),
            CustomTextField(
              onChanged: (value) {},
              labelText: 'Email',
              suffixIcon: const Icon(Icons.email_outlined),
              controller: _emailController,
            ),
            CustomTextField(
              onChanged: (value) {},
              labelText: 'Password',
              suffixIcon: const Icon(Icons.password),
              controller: _passwordController,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColors.primaryColor,// Set button color to red
              ),
              onPressed: _isLoading
                  ? null
                  : () async {
                      setState(() {
                        _isLoading = true;
                      });
                      String? signUpResult = await _auth.signUp(
                        _emailController.text,
                        _passwordController.text,
                      );
                      setState(() {
                        _isLoading = false;
                      });
                      if (signUpResult == null) {
                        Navigator.pushNamed(context, EnterUserData.id);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(signUpResult),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
              child: _isLoading ? const CircularProgressIndicator() : const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
