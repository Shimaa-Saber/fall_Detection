class EndPoint {
  static String baseUrl = "http://falldetect.somee.com/";
  static String signIn = "api/User";
  static String signUp = "api/User";
  static String getUserDataEndPoint(id) {
    return "api/User$id";
  }
}

class ApiKey {
  static String userName = "userName";
  static String errorMessage = "ErrorMessage";
  static String userEmail = "userEmail";
  static String password = "password";
  static String token = "token";
  static String status = "status";
  static String id = "id";
  static String message = "message";
  static String userDOB = "userDOB";
  static String userPhoneNumber = "userPhoneNumber";
  static String photo = "photo";
  static String country = "country";
  static String userGender = "userGender";
  static String emergencyContactName = "emergencyContactName";
  static String emergencyContactPhoneNumber = "emergencyContactPhoneNumber";
}
