import 'package:http/http.dart' as http;

class LoginServices {
  final String baseUrl = 'https://11a2-113-11-180-88.ap.ngrok.io';
  Future<bool> loginUser({String? username, String? password}) async {
    try { 
      Uri uri = Uri.parse('$baseUrl/api/login');
      http.Response response = await http.post(uri,body: {
        'username' : username,
        'password' : password,
      });
      if(response.statusCode == 200) {
        return true;
      }
      return false;
    }catch(e) {
      return false;
    }
  }

}