

import '../../Models/user_model.dart';

abstract class UserState{}

class SignInLoading extends UserState {}
class UserInitial extends UserState{}
class SignInSuccess extends UserState {}

class SignInFailure extends UserState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}


class SignUpLoading extends UserState {}

class SignUpSuccess extends UserState {
  final int id;

  SignUpSuccess({required this.id});
}

class SignUpFailure extends UserState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}


class UserLoading extends UserState{}
class UserSuccess extends UserState{
  final  UserModel user;

  UserSuccess({required this.user});
}
class Userfailer extends UserState{
  final String errorMessage;

  Userfailer({ required this.errorMessage});


}
