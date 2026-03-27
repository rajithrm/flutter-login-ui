import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: "http://10.0.2.2:3000"));

  Future login(String email, String password) async {
    try {
      final response = await _dio.post(
        "/api/login",
        data: {"email": email, "password": password},
      );

      return response.data;
    } catch (e) {
      if (e is DioException) {
        throw e.response?.data["message"] ?? "Login failed";
      }
      throw "Login failed";
    }
  }
}
