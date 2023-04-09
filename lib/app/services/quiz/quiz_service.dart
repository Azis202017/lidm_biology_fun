import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../constant/api_url.dart';
import '../../data/model/list_quiz_model.dart';

class QuizService {
  Future<List<Quiz>> getAllMaterial() async {
    try {
      Uri uri = Uri.parse('$apiUrl/quiz');
      http.Response response = await http.get(
        uri,
        headers: {
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5OGQxYjAxMS01MDYyLTRkMDAtYWNjZS1jOTY4NjVhMzFjMTEiLCJqdGkiOiJiNDIwY2Q5OTkxYjMwMmViMjA5NmE4ZjEwNWY2NDg5MmEwOTMxOGM1OTA5NmQ4YTg4YzlkZjEzZjA2NmU5NmU0ODhjYzExZTM1OWNlNjRhYiIsImlhdCI6MTY4MDkyNTI1NS4yMjQyNiwibmJmIjoxNjgwOTI1MjU1LjIyNDI2MiwiZXhwIjoxNzEyNTQ3NjU1LjIxOTA1NCwic3ViIjoiYjk0NjExMzctMTAyMC00NTkyLTkxYTctMzhjMThmOThkMzA4Iiwic2NvcGVzIjpbXX0.WfNqWe2VrvgaDQ1ooKO0jT7-06LP1As9_oQCv-c_fAKZbKNRkbp9k9ZYEgFSNeX3dx2DevnEwldwdywkuBaFKBKaVx7NB98fsZ5oXo23jdHCFB4vzC22oAAocSUo7blAUZeUKnHHA4jT_b2EuMY_hW-JP2jwhrE3Nf8JcqWY9Ot5EbZ_yWkG3QY_IPH9cQYfPxugWsYNvMz3cfEelkJYj0Upoo0ErqEMyRXWjMLf8Ti3GyfFPA0HK3xn35l_V1Lk3BCqc988ikGOvOERmRKM2aUgcvQ1iR0M6ssaISZG8Gt28mYb9Uwy0Isk7ILHObTwL6lYAcoHYlzVHsGNhCFfltE3hDLM7SspudwMyZgY3Y9oCmFTBAE8gwZJ8FWuRthJhFZPt_ElvtShEQQ3Vspjb3LDQT8Nj6AJITYUxWCSQidlvzByem6Qq8m46zf37lccOvxTRR_77xGHqx3vAm4jw3dOKk_qqVRE2bwH5iVQLd0mGiLlu0L-2qjiM_mda41pgD3FOg5vXOTAB7cWNtK7hYIXg2HkLY9yxT9kkupTb_bYC1MipY5CONH2ULxb-pq604JdgqulpjsLjW4QZlb8wt6anX0aSw_R12xiORl6m331-vUNVWl8bxl1GtqNRQz5oOcHfPdHN1cumNc3ivalgQTvfmhngtT4QnelrORgK-o',
        },
      );
      if (response.statusCode == 200) {
        List? data =
            (json.decode(response.body) as Map<String, dynamic>)['data'];
        if (data == null || data.isEmpty) {
          return [];
        } else {
          return data.map((e) => Quiz.fromJson(e)).toList();
        }
      }
      return [];
    } catch (e) {
      throw Exception(e);
    }
  }
}
