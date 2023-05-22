import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../constant/api_url.dart';
import '../../data/model/quiz/question_quiz.dart';

class QuestionService {
  Future<List<QuestionModel>> fetchQuestion() async {

    try {
      final storage = GetStorage();
      Uri uri = Uri.parse('$apiUrl/quiz');
      http.Response response = await http.get(
        uri,
        headers: {
          'Authorization':
              'Bearer ${storage.read("token")}',
        },
      );
      if (response.statusCode == 200) {
        List? data =
            (json.decode(response.body) as Map<String, dynamic>)['data'];
        if (data == null || data.isEmpty) {
          return [];
        } else {
          return data.map((e) => QuestionModel.fromJson(e)).toList();
        }
      }
      return [];
    } catch (e) {
      return throw Exception(e);
    }
  }

}
