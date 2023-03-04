part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object?> get props => [];
}

class AuthenticationStarted extends AuthenticationEvent {}

class SendOTP extends AuthenticationEvent {
  final String phoneNumber;

  const SendOTP(this.phoneNumber);
  @override
  List<Object> get props => [phoneNumber];
}

// class OTPReceived extends AuthenticationEvent {
//   final String verificationId;
//   final int? resendToken;

//   const OTPReceived(this.verificationId, this.resendToken);
//   @override
//   List<Object?> get props => [verificationId, resendToken];
// }

class VerifyOTP extends AuthenticationEvent {
  final String verificationId;
  final String otp;

  const VerifyOTP(this.verificationId, this.otp);
  @override
  List<Object?> get props => [verificationId, otp];
}
