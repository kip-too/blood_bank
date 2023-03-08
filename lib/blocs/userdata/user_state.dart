part of 'user_bloc.dart';

abstract class UserInfoState extends Equatable {
  const UserInfoState();

  @override
  List<Object?> get props => [];
}

class InitialUserInfoState extends UserInfoState {}

class UserInfoLoadingState extends UserInfoState {}

class UserInfoSuccess extends UserInfoState {
  final UserInfo userInfo;

  const UserInfoSuccess(this.userInfo);
  @override
  List<Object?> get props => [userInfo];
}
