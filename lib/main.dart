import 'package:blood_bank/screens/request/create_request.dart';
import 'package:blood_bank/screens/searchdonor/search_donor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/auth/authentication_bloc.dart';
import 'firebase_options.dart';
import 'screens/authentication/Signup_screen.dart';
import 'screens/authentication/otp_page.dart';
import 'screens/exports_screens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SignUpPage.id,
        routes: {
          SignUpPage.id: (context) => const SignUpPage(),
          OTPPage.id: (context) => const OTPPage(),
          HomeScreen.id: (context) => const HomeScreen(),
          SearchDonorScreen.id: (context) => const SearchDonorScreen(),
          CreateRequestPage.id: (context) => const CreateRequestPage(),
        },
      ),
    );
  }
}
