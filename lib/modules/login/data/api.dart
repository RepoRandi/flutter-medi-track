import 'package:dio/dio.dart';
import 'package:medi_track/modules/login/data/models/login_request.dart';

class LoginApi {
  Dio dio = Dio();

  Future<Map<String, dynamic>> login(LoginRequest loginRequest) async {
    Map<String, dynamic> result = {
      "error": false,
      "message": "",
    };

    try {
      final response = await dio.post("https://reqres.in/api/login",
          data: loginRequest.toMap());
      result = response.data;
      result['error'] = false;
      return result;
    } on DioException catch (e) {
      String errorMessage;
      if (e.response != null && e.response!.data != null) {
        errorMessage = e.response!.data['error'] ?? 'Unknown error';
      } else {
        errorMessage = e.message!;
      }
      result["error"] = true;
      result["message"] = errorMessage;
      return result;
    }
  }
}
