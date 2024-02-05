import '../helper/api_key.dart';

class UserModel {
  final String image;

//final String email;
  final String phone;
  final String name;

//final Map<String, dynamic> address;

  UserModel({
    required this.image,
    // required this.email,
    required this.phone,
    required this.name,
    // required this.address,
  });



  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      image: jsonData['user'][ApiKey.photo],

      phone: jsonData['user'][ApiKey.userPhoneNumber],
      name: jsonData['user'][ApiKey.userName],
      
    );
  }
}
