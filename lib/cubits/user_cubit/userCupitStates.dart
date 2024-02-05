import 'package:fall_detection_app/Models/userModel.dart';
import 'package:flutter/material.dart';

abstract class UserCubitStates{}
class UserInitial extends UserCubitStates{}
class UserLoading extends UserCubitStates{}
class UserSuccess extends UserCubitStates{
 final  UserModel user;

  UserSuccess({required this.user});
}
class Userfailer extends UserCubitStates{
  final String errorMessage;

  Userfailer({ required this.errorMessage});


}