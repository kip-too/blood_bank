import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  AuthenticationBloc() : super(InitialAuthState()) {
    on<SendOTP>((event, emit) async {
      emit(LoadingAuthState());
      try {
        await _auth.verifyPhoneNumber(
          phoneNumber: event.phoneNumber,
          timeout: const Duration(seconds: 60),
          verificationCompleted: (PhoneAuthCredential credential) {},
          verificationFailed: (FirebaseException e) {
            print(e.message);
          },
          codeSent: (String verificationId, int? resendToken) {
            emit(OTPReceivedState(verificationId, resendToken));
          },
          codeAutoRetrievalTimeout: (String verificationId) {},
        );
      } catch (e) {
        emit(ErrorAuthState(e.toString()));
      }
    });

    on<VerifyOTP>((event, emit) async {
      emit(LoadingAuthState());
      try {
        final PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: event.verificationId,
          smsCode: event.otp,
        );

        await _auth.signInWithCredential(credential);
        final User? user = _auth.currentUser;
        if (user != null) {
          SuccessAuthState(user);
        } else {
          const ErrorAuthState('User is null');
        }
      } catch (e) {
        ErrorAuthState(e.toString());
      }
    });
  }
}
