import 'package:fall_detection_app/Models/userModel.dart';
import 'package:fall_detection_app/cubits/user_cubit/userCupitStates.dart';
import 'package:fall_detection_app/helper/api_key.dart';
import 'package:fall_detection_app/helper/api_service.dart';
import 'package:fall_detection_app/helper/errors/failures.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class UserCupit extends Cubit<UserCubitStates>{
  UserCupit(super.initialState);

ApiService ?api;
 /* void GetUserProfile({required int id}) async{
    try{
      emit(UserLoading());
      final response= await api!.get(url: 'api/User?id=$id');
      emit(UserSuccess(user: UserModel.fromJson(response)));
    }on ServerException catch(e){
      Userfailer(errorMessage: e.errModel.errorMessage);
    }*/
  }




