part of 'sigup_bloc.dart';

abstract class SignupEvent extends Equatable {
  const SignupEvent();
}

class SignUpRequested extends SignupEvent{
  final String email;
  final String password;
  final String phoneNumber;

  SignUpRequested(this.email, this.password,this.phoneNumber);

  @override
  // TODO: implement props
  List<Object?> get props => [];

  
}
