import 'package:firebase_auth/firebase_auth.dart';

// Function to verify phone number
Future<void> verifyPhoneNumber(String phoneNumber) async {
  verificationCompleted(AuthCredential authResult) async {
    // Verification completed automatically
    // You can use the AuthCredential to sign-in the user.
    // This is useful when the user signs in from the same device later.
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(authResult);
  }

  verificationFailed(FirebaseAuthException authException) {}

  codeSent(String verificationId, [int? forceResendingToken]) async {
    // Handle code sent scenario
  }

  codeAutoRetrievalTimeout(String verificationId) {}

  await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      timeout: const Duration(seconds: 60));
}
