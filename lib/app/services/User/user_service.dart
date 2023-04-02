import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../constant/api_url.dart';
import '../../data/model/user_model.dart';

class UserService {
  Future<User> getUserData() async {
    try {
      final box = GetStorage();
      Uri uri = Uri.parse('$apiUrl/profile');
      http.Response response = await http
          .get(uri, headers: {'Authorization': 'Bearer ${box.read('token')}'});
      return User.fromJson(json.decode(response.body));
    } catch (e) {
      throw Exception(e);
    }
  }
}
