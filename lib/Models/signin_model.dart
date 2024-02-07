import '../helper/api/end_ponits.dart';

class SignInModel {
  final String email;
  final String id;

  SignInModel({required this.email, required this.id});

  factory SignInModel.fromJson(Map<String, dynamic> jsonData) {
    return SignInModel(
      email: jsonData[ApiKey.userEmail],
      id: jsonData[ApiKey.id],
    );
  }
}
