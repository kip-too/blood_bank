import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:blood_bank/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: const <Widget>[
              Expanded(
                child: CustomTextField(
                  labelText: 'First Name',
                  suffixIcon: null,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: CustomTextField(
                  labelText: 'Last Name',
                  suffixIcon: null,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomTextField(labelText: 'NID Number', suffixIcon: null),
          const SizedBox(
            height: 15,
          ),
          const CustomTextField(
              labelText: 'Mobile Phone Number', suffixIcon: null),
          const SizedBox(
            height: 15,
          ),
          const CustomTextField(labelText: 'Email', suffixIcon: null),
          Row(
            children: const <Widget>[
              Expanded(
                child: CustomTextField(
                  labelText: 'Gender',
                  suffixIcon: Icon(Icons.arrow_drop_down),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: CustomTextField(
                  labelText: 'Date of Birth',
                  suffixIcon: Icon(Icons.calendar_month),
                ),
              ),
            ],
          ),
          const CustomTextField(labelText: 'Location', suffixIcon: null),
          const SizedBox(
            height: 15,
          ),
          const CustomTextField(
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
              onPressed: () {},
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
                          ))),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
