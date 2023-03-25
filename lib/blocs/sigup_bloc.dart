import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../repositories/authrepo/auth_repo.dart';

part 'sigup_event.dart';
part 'sigup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SigupState> {
  final AuthRepository authRepository ;
  SignupBloc({required this.authRepository}) : super(SigupInitial()) {
    on<SignUpRequested>((event, emit) async{
      emit(SigupLoading());
      try{
        authRepository.signUp(
            email: event.email,
            password: event.password,
            phoneNumber: event.phoneNumber);
      } catch(e){
        emit(SigupInitial());
      }
    });
  }
}
