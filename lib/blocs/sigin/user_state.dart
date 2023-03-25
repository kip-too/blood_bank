part of 'user_bloc.dart';

abstract class UserInfoState extends Equatable {
  const UserInfoState();

  @override
  List<Object> get props => [];
}

class UserInfoInitial extends UserInfoState {}

class UserInfoSaveSuccess extends UserInfoState {}

class UserInfoSaveFailure extends UserInfoState {
  final String error;

  const UserInfoSaveFailure({required this.error});

  @override
  List<Object> get props => [error];
}

class UserInfoLoadSuccess extends UserInfoState {
  final UserInfo userInfo;

  const UserInfoLoadSuccess({required this.userInfo});

  @override
  List<Object> get props => [userInfo];
}

class UserInfoLoadFailure extends UserInfoState {
  final String error;

  const UserInfoLoadFailure({required this.error});

  @override
  List<Object> get props => [error];
}
