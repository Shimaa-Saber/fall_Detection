import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../Models/signUpModel.dart';
import '../../Models/signin_model.dart';
import '../../cache/cache_helper.dart';
import '../../helper/api/api_consumer.dart';
import '../../helper/api/end_ponits.dart';
import '../../helper/errors/failures.dart';
import 'AuthStates.dart';

class UserCubit extends Cubit<UserState>{
  UserCubit(super.initialState, this.api);


  final ApiConsumer api;


  //Sign in Form key
  GlobalKey<FormState> signInFormKey = GlobalKey();
  //Sign in email
  TextEditingController signInEmail = TextEditingController();
  //Sign in password
  TextEditingController signInPassword = TextEditingController();
  //Sign Up Form key
  GlobalKey<FormState> signUpFormKey = GlobalKey();


  TextEditingController signUpName = TextEditingController();
  //Sign up phone number
  TextEditingController signUpPhoneNumber = TextEditingController();
  //Sign up email
  TextEditingController signUpEmail = TextEditingController();
  //Sign up password
  TextEditingController signUpPassword = TextEditingController();

  TextEditingController signUpGender = TextEditingController();




  signUp() async {
    try {
      emit(SignUpLoading());
      final response = await api.post(
        EndPoint.signUp,
        isFromData: true,
        data: {
          ApiKey.userName: signUpName.text,
          ApiKey.userPhoneNumber: signUpPhoneNumber.text,
          ApiKey.userEmail: signUpEmail.text,
          ApiKey.password: signUpPassword.text,
          ApiKey.userGender: signUpGender.text


          //ApiKey.profilePic: await uploadImageToAPI(profilePic!)
        },
      );
      final signUPModel = SignUpModel.fromJson(response);
      emit(SignUpSuccess(message: signUPModel.message));
    } on ServerException catch (e) {
      emit(SignUpFailure(errMessage: e.errModel.errorMessage));
    }
  }


  SignInModel? user;
  signIn() async {
    try {
      emit(SignInLoading());
      final response = await api.post(
        EndPoint.signIn,
        data: {
          ApiKey.userEmail: signInEmail.text,
          ApiKey.password: signInPassword.text,
        },
      );
      user = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user!.token);
      CacheHelper().saveData(key: ApiKey.token, value: user!.token);
      CacheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
      emit(SignInSuccess());
    } on ServerException catch (e) {
      emit(SignInFailure(errMessage: e.errModel.errorMessage));
    }
  }




}