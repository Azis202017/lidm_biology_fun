import 'package:http/http.dart' as http;

class LoginServices {
  final String baseUrl = 'https://f559-2001-448a-3025-13cb-752a-9304-e329-e4e3.ngrok.io';
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