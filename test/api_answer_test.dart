import 'dart:convert';

import 'package:biology_fun/app/constant/api_url.dart';
import 'package:http/http.dart' as http;

void main() async {
  Map<String, dynamic> submitAnsw = {
    "quiz_id": "613c0bef-cb11-49eb-9f89-9d79b24c428d",
    "answers": [
      {"question_id": "5e40aad8-551f-41c2-b51b-9452b604649b", "answer": "a"},
      {"question_id": "94b79b9a-ac93-4bd1-8c14-104db5a6c0a4", "answer": "C"}
    ]
  };
  http.Response response = await http.post(
      Uri.parse(
        '$apiUrl/submit-answer',
      ),
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5OGQxYjAxMS01MDYyLTRkMDAtYWNjZS1jOTY4NjVhMzFjMTEiLCJqdGkiOiI0ZmJiNDYyNzA5ZGJhZDU0N2Q2ZTUxZTc2NDVlZWM1ZjBhODEzZjQzMDFhY2I0YTk1ODE2NGU3YTYwMmNmNzQzOGYzODAzZmQzYjI3MmVhMCIsImlhdCI6MTY4MTAyMTg1NS4yOTUxODgsIm5iZiI6MTY4MTAyMTg1NS4yOTUxOSwiZXhwIjoxNzEyNjQ0MjU1LjI5MjA5NCwic3ViIjoiOWViYWM5YWEtNGU3Zi00NDliLTkzYzktNDYxZjc0NjI3ZDkxIiwic2NvcGVzIjpbXX0.yRMyfUWHH6oOgy63RkrP4kTDu1Bykq4fVSuTdIaQjZmTmr4comuBcdXldwBGXWgj7xCpHk00i4SvY4JiE-BN4mtNzKFchgDjV7Bz4czwYvd1TUibSxeV43g20vw9XzdJA39Ij-HTA--FNKRZCyftm_7RdTX2Q-2Q3iME4wM47vlDyPnjdJ6tyYgnT1jfesZr0YSZYedN1zZlbjCL775Gz18nY5JN9YTdJs0RBqB7rmvZgHdvDLCJwsUB6acmSI7ncW0d-hN8Cqr7Qg6oIILBtwhhqB6M82prjZoAO-C9WN7I4ujwmuCNR-GN9qEHknfMY2kV3jnkJNtly7mlx2w8FJyFyLyaFSUimtvCpyT519Ku4wj0s1oH6VH_KCXw43v5O9gxUTVdG2pP50gVkW03BSN06qQSajs9gIO937-XhwxkhLqcmzbESY15D40hyWuBTtZ8U2GKDxHIPvAb5cOCG9WSIlkJ-oY09aOxclh4W1vhAoZd0uLOQb6rwVwzjLj9SqhXDYmnwexfxb-k4r1nv-KBbOkAeKeP38ktPt_VwngN0YdxBYGNHsWdJAmRyvglPrdfrk1IJpY1mQpSdUh2JO9iAs_epruYsZW6S0TrrDjNazErmcJxbPbuDYzd0P3964NVIFM1j3PVuKq9LjuG4AUWPNZFjASHRNqO6LPlJWU',
        'content-type': 'application/json'
      },
      body: json.encode(submitAnsw));
      print(response.body);
}
