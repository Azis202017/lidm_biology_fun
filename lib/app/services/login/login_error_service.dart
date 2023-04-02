import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../constant/api_url.dart';
import '../../data/model/error/login_error_model.dart';

class LoginErrorService {
  Future<LoginError> errorLog({String? username, String? password}) async {
    Uri uri = Uri.parse('$apiUrl/login');
    http.Response response = await http.post(uri, body: {
      'username': username,
      'password': password,
    });

    return LoginError.fromJson(jsonDecode(response.body));
  }
}
