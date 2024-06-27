import 'package:dio/dio.dart';
import 'package:rivoj_uz_project/common/const/config.dart';
import 'package:rivoj_uz_project/common/model/user_model/user_model.dart';

class LoginRepository {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: Config.baseUrl,
      headers: Config.headers,
    ),
  );

  Future<UserModel?> signIn({
    required String phone,
    required String password,
  }) async {
    final body = {
      'phoneNumber': phone,
      'password': password,
    };

    try {
      final response = await _dio.post(Config.signIn, data: body);

      if (response.statusCode == 200 && response.data != null) {
        return UserModel.fromJson(response.data);
      } else {
        print('Failed to sign in: ${response.statusCode} - ${response.data}');
        return null;
      }
    } catch (e) {
      print('Unexpected error occurred: $e');
      return null;
    }
  }
}
