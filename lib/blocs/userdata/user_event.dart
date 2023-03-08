part of 'user_bloc.dart';

abstract class UserInfoEvent {
  const UserInfoEvent();
}

class SaveUserData extends UserInfoEvent {
  final UserInfo userInfo;

  const SaveUserData(this.userInfo);
}
