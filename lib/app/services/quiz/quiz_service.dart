import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../constant/api_url.dart';
import '../../data/model/quiz/list_quiz.dart';
class QuizService {
   Future<List<QuizModel>> fetchQuestion() async {

    try {
      final storage = GetStorage();
      Uri uri = Uri.parse('$apiUrl/get-quiz-question/dd9b5e40-7a14-448a-98ef-01085ea673dc');
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
          return data.map((e) => QuizModel.fromJson(e)).toList();
        }
      }
      return [];
    } catch (e) {
      return throw Exception(e);
    }
  }

}