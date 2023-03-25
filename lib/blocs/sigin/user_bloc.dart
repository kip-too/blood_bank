import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/user/user_info.dart';
import '../../repositories/userrepsitory/user_repository_impl.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserInfoBloc extends Bloc<UserInfoEvent, UserInfoState> {
  final FirebaseUserInfoRepositoryImpl firebaseUserInfoRepositoryImpl;

  UserInfoBloc({required this.firebaseUserInfoRepositoryImpl})
      : super(UserInfoInitial()) {
    on<SaveUserInfo>((event, emit) async {
      emit(UserInfoSaveSuccess());
      try {
        await firebaseUserInfoRepositoryImpl.saveUserInfo(event.userInfo);
      } catch (e) {
        UserInfoSaveFailure(error: e.toString());
      }
    });
    on<GetUserInfo>((event, emit) async {
      try {
        final userInfo = await firebaseUserInfoRepositoryImpl.getUserInfo();
        emit(UserInfoLoadSuccess(userInfo: userInfo));
      } catch (e) {
        UserInfoLoadFailure(error: e.toString());
      }
    });
  }
}
