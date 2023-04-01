import 'package:biology_fun/app/constant/api_url.dart';
import 'package:http/http.dart' as http;

class LoginServices {
  final String baseUrl = apiUrl;
  Future<bool> loginUser({String? username, String? password}) async {
    try { 
      Uri uri = Uri.parse('$baseUrl/api/login');
      http.Response response = await http.post(uri,body: {
        'username' : username,
        'password' : password,
      });
      print(response.body);
      if(response.statusCode == 200) {
        return true;
      }
      return false;
    }catch(e) {
      return false;
    }
  }

}