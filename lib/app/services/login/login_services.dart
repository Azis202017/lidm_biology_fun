import 'dart:convert';

import 'package:biology_fun/app/constant/api_url.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class LoginServices {
  Future<bool> loginUser({String? username, String? password}) async {
    try {
      final box = GetStorage();
      Uri uri = Uri.parse('$apiUrl/login');
      http.Response response = await http.post(uri, body: {
        'username': username,
        'password': password,
      });

      if (response.statusCode == 200) {
        box.write('token', json.decode(response.body)['data']['token']);
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> logoutUser({String? token}) async {
    try {
      Uri uri = Uri.parse('$apiUrl/logout');
      final box = GetStorage();
      http.Response response =
          await http.post(uri, headers: {'Authentication': 'Bearer $token'});
      print(response.body);

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      throw Exception(e);
    }
  }
}
