import 'package:blood_bank/configs/images/urls.dart';
import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:blood_bank/screens/authentication/phone_sign_up.dart';
import 'package:blood_bank/screens/exports_screens.dart';
import 'package:blood_bank/services/auth_service.dart';
import 'package:blood_bank/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static String id = "LoginScreen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  bool _isLoading = false;
  final Auth _auth = Auth();

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
              suffixIcon: Icon(Icons.email_outlined),
              controller: _emailController,
            ),
            CustomTextField(
              onChanged: (value) {},
              labelText: 'Password',
              suffixIcon: Icon(Icons.password),
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
                      String? loginResult = await _auth.logIn(
                        _emailController.text,
                        _passwordController.text,
                      );
                      setState(() {
                        _isLoading = false;
                      });
                      if (loginResult == null) {
                        Navigator.pushNamed(context, HomeScreen.id);
                      } else {
                        // Login failed, show error message
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(loginResult),
                            duration: const Duration(seconds: 3),
                          ),
                        );
                      }
                    },
              child: _isLoading ? const CircularProgressIndicator() : const Text('Login'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, PhoneSignUp.id);
              },
              child: const Text('Don\'t have an account? Sign up',
                style:TextStyle(
                  color: CustomColors.textColor,
                  fontFamily: 'Manrope'
                ) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
