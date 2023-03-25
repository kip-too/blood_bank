part of 'sigup_bloc.dart';

abstract class SigupState extends Equatable {
  const SigupState();
}

class SigupInitial extends SigupState {
  @override
  List<Object> get props => [];
}

class SigupLoading extends SigupState {
  @override
  List<Object> get props => [];
}

