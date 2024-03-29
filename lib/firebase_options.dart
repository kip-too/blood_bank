// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD8zXCnxvRvaO3zletqSCYRdhBO6eRPG8s',
    appId: '1:27206057732:web:50937304e733a093d55a51',
    messagingSenderId: '27206057732',
    projectId: 'blood-bank-95cae',
    authDomain: 'blood-bank-95cae.firebaseapp.com',
    storageBucket: 'blood-bank-95cae.appspot.com',
    measurementId: 'G-NDZNM8GFX6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA19BeWlJJDLBLpFv30Sr9eGkcqbFyUMlc',
    appId: '1:27206057732:android:b07ff46353e374f1d55a51',
    messagingSenderId: '27206057732',
    projectId: 'blood-bank-95cae',
    storageBucket: 'blood-bank-95cae.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDq0EvCWib4tr1eW40lELXw923FgXcG4tk',
    appId: '1:27206057732:ios:3354ff00f1121dbdd55a51',
    messagingSenderId: '27206057732',
    projectId: 'blood-bank-95cae',
    storageBucket: 'blood-bank-95cae.appspot.com',
    iosClientId: '27206057732-9r49cvukehhraq5ft7np8jt96i0nnc0c.apps.googleusercontent.com',
    iosBundleId: 'com.example.bloodBank',
  );
}
