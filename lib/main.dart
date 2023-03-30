import 'package:blood_bank/repositories/authrepo/auth_repo.dart';
import 'package:blood_bank/screens/authentication/login_page.dart';
import 'package:blood_bank/screens/authentication/phone_sign_up.dart';
import 'package:blood_bank/screens/request/create_request.dart';
import 'package:blood_bank/screens/searchdonor/search_donor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'screens/authentication/user_data_entry.dart';
import 'screens/authentication/otp_page.dart';
import 'screens/bloodbank/blood_bank.dart';
import 'screens/exports_screens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      /*options: DefaultFirebaseOptions.currentPlatform*/);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        PhoneSignUp.id: (context) => const PhoneSignUp(),
        LoginScreen.id: (context) => const LoginScreen(),
        EnterUserData.id: (context) => const EnterUserData(),
        HomeScreen.id: (context) => const HomeScreen(),
        SearchDonorScreen.id: (context) => const SearchDonorScreen(),
        CreateRequestPage.id: (context) => const CreateRequestPage(),
        BloodBankPage.id: (context) => const BloodBankPage(),
      },
    );
  }
}
