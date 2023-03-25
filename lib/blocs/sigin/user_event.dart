part of 'user_bloc.dart';

abstract class UserInfoEvent extends Equatable {
  const UserInfoEvent();

  @override
  List<Object> get props => [];
}

class SaveUserInfo extends UserInfoEvent {
  final UserInfo userInfo;

  const SaveUserInfo({required this.userInfo});

  @override
  List<Object> get props => [userInfo];
}

class GetUserInfo extends UserInfoEvent {}
