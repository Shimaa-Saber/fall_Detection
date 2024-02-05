import 'package:dio/dio.dart';
import 'package:fall_detection_app/helper/errors/failures.dart';

class ApiService {
  //final _baseUrl = 'http://falldetect.somee.com';
  final Dio _dio;

  ApiService(this._dio){
   _dio.options.baseUrl='http://falldetect.somee.com' ;
  }

 /* Future get(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(
       path ,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
     handleDioExceptions(e);
    }
  }*/

 /* Future get({required String url,Map<String,dynamic> ?queryParameters})async{
    try {
      var response = await _dio.get(
          //'$_baseUrl$url', queryParameters: queryParameters);

      return response.data;
    }on DioException catch(e){
      handleDioExceptions(e);
    }
  }*/

}



