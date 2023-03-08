import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/user/user_info.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserInfoBloc extends Bloc<UserInfoEvent, UserInfoState> {
  final CollectionReference userInfoCollection =
      FirebaseFirestore.instance.collection('user_info');
  UserInfoBloc() : super(InitialUserInfoState()) {
    on<SaveUserData>((event, emit) async {
      emit(UserInfoLoadingState());
      try {
        UserInfo? userInfo;
        await userInfoCollection.doc().set(event.userInfo.toMap());
        if (userInfo != null) {
          emit(UserInfoSuccess(userInfo));
        }
      } catch (e) {
        emit(InitialUserInfoState());
      }
    });
  }
}
