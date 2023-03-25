import 'package:blood_bank/keys/keys.dart';
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

 @override
  void initState() {
   super.initState();
   _emailController = TextEditingController();
   _passwordController=TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            CustomTextField(
              onChanged:(value){} ,
              labelText: 'Email',
              suffixIcon: Icon(Icons.email_outlined),
              controller: _emailController,
            ),
            CustomTextField(
              onChanged:(value){} ,
              labelText: 'Password',
              suffixIcon: Icon(Icons.password),
              controller: _passwordController,
            ),


          ],
        ),
      ),
    );
  }
}


