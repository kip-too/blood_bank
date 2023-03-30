import 'package:blood_bank/screens/exports_screens.dart';
import 'package:blood_bank/widgets/export_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EnterUserData extends StatefulWidget {
  static String id = 'Enter_user_data';

  const EnterUserData({Key? key}) : super(key: key);

  @override
  State<EnterUserData> createState() => _EnterUserDataState();
}

class _EnterUserDataState extends State<EnterUserData> {
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
  bool _saving = false;


  Future<void> _saveUserData() async {
    setState(() {
      _saving = true;
    });

    final firstName = firstNameController.text;
    final lastName = lastNameController.text;
    final idNumber = idNumberController.text;
    final mobileNumber = mobileNumberController.text;
    final email = emailController.text;
    final gender = genderController.text;
    final dateOfBirth = dateOfBirthController.text;
    final location = locationController.text;
    final bloodGroup = bloodGroupController.text;
    final donor = _donor;

    final data = {
      'firstName': firstName,
      'lastName': lastName,
      'idNumber': idNumber,
      'mobileNumber': mobileNumber,
      'email': email,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'location': location,
      'bloodGroup': bloodGroup,
      'donor': donor,
    };

    await FirebaseFirestore.instance.collection('userinfo').add(data);

    setState(() {
      _saving = false;
    });
  }

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
                  onChanged: (value) {},
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
                      suffixIcon: const Icon(Icons.arrow_drop_down),
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
                      suffixIcon: const Icon(Icons.calendar_month),
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
                suffixIcon: const Icon(Icons.arrow_drop_down),
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
                    await _saveUserData();

                    Navigator.pushNamed(context, HomeScreen.id);
                    if (_saving) // Only show the progress indicator if the flag is set
                      CircularProgressIndicator();
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
            ]),
          ),
        ),
      ),
    );
  }
}
