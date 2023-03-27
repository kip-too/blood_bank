import 'package:blood_bank/keys/keys.dart';
import 'package:blood_bank/screens/authentication/Signup_screen.dart';
import 'package:blood_bank/services/auth_service.dart';
import 'package:blood_bank/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

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
                        Navigator.pushNamed(context, SignUpPage.id);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(signUpResult),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
              child: _isLoading ? CircularProgressIndicator() : Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
