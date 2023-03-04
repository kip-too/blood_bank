part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object?> get props => [];
}

class InitialAuthState extends AuthenticationState {}

class LoadingAuthState extends AuthenticationState {}

class ErrorAuthState extends AuthenticationState {
  final String errorMessage;
  const ErrorAuthState(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}

class SuccessAuthState extends AuthenticationState {
  final User user;

  const SuccessAuthState(this.user);
  @override
  List<Object> get props => [user];
}

class OTPReceivedState extends AuthenticationState {
  final String verificationId;
  final int? resendToken;

  const OTPReceivedState(this.verificationId, this.resendToken);

  @override
  List<Object?> get props => [verificationId, resendToken];
}
