import 'dart:convert';

import 'package:biology_fun/app/data/model/discussion/discussion_detail_model.dart';
import 'package:biology_fun/app/data/model/discussion/list_discussion_model.dart';
import 'package:http/http.dart' as http;

import '../../constant/api_url.dart';

class DiscussionService {
  Future<List<Discussion>> fetchDiscussionData() async {
    try {
      Uri uri = Uri.parse('$apiUrl/discussion');
      http.Response response = await http.get(
        uri,
        headers: {
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5OTJjNmE0ZS0zZDU4LTQ5NjItYWMxYS00Mzg4ODczNWNhMjAiLCJqdGkiOiIyMjk1MDdiZWExYjBlZTc4MGVkMDliYTFmNWJjMDE2MzhjYmNkOTVlYTU2Y2UzNjYwYjZjOGVmOTZjMjkwN2VjNDNjNzEyNTE2ZTA4MjkzOCIsImlhdCI6MTY4NDQ1MjQwNC4zNTY5NzMsIm5iZiI6MTY4NDQ1MjQwNC4zNTY5ODIsImV4cCI6MTcxNjA3NDgwNC4zNTE4OTEsInN1YiI6ImI5NDYxMTM3LTEwMjAtNDU5Mi05MWE3LTM4YzE4Zjk4ZDMwOCIsInNjb3BlcyI6W119.lp1ORoMRXC0DqfHA2ydY6tYP2vDWLoSJ472Kn7321ANNJMEaJQ1Nof8WcdMTwbjli-mer8LzvEDEFZYs3iipvBjfYvuxys14HcSKVpbgC1UuVIDzS_Fclah0ff9T1zARSp5QYwzfGNtFLK1pcwGHBosbsibZ5nH6KA5_s_9MWCGX643z0OBzL7IqPssubKU53998u_2iOqtCws9LKOmtPN6XC5O7TAjOfsUhbA08NULhqUGVXgTJDlKL7Zgin8rb8PZCAf1s0qpAnWJlQ9RqNHCaS9E1Fj5eFEtrj-HnFWqrLrQWPKoa_6PSI5XmS6NaSa6o-l_XDK9RQsSy5D-2BwcL5Mczfk5tshCjRDAc2tAykHjwSNiqH7UeybqgUiMQmJMzbF7EL2IOQqAOj2YHTbaURgZHze_3s4-EeNngn_yRbRCX7b4WyTh4DDete6LnlD8MB36WvJDD92eFtkx2Jxk1ZdAClxJd4s1urqkRlTJvbKFP2oTw-0MIFhHqd3nfZhlZQDwPRi61NZrxjPFKO_tETOw-FfAPUc7QfR3EQQlyT2064SSeDZjmPR8b2xlUomSGQdImN6BYJM7BfCFUCFQSu-S4J_972yFm14W0KGA8N5_PykJxp2Sf2_czU5OvCQ-JxxwZs3uLbnjulioZbXSZYsOfYeRmkMcyknZf5ME',
        },
      );
      if (response.statusCode == 200) {
        List? data =
            (json.decode(response.body) as Map<String, dynamic>)['data'];
        if (data == null || data.isEmpty) {
          return [];
        } else {
          return data.map((e) => Discussion.fromJson(e)).toList();
        }
      }
      return [];
    } catch (e) {
      return throw Exception(e);
    }
  }

  Future<DetailDiscussion?> fetchDiscussionDetail(String id) async {
    try {
      Uri uri = Uri.parse(
        '$apiUrl/discussion/$id',
      );
      http.Response response = await http.get(
        uri,
        headers: {
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5OTJjNmE0ZS0zZDU4LTQ5NjItYWMxYS00Mzg4ODczNWNhMjAiLCJqdGkiOiIyMjk1MDdiZWExYjBlZTc4MGVkMDliYTFmNWJjMDE2MzhjYmNkOTVlYTU2Y2UzNjYwYjZjOGVmOTZjMjkwN2VjNDNjNzEyNTE2ZTA4MjkzOCIsImlhdCI6MTY4NDQ1MjQwNC4zNTY5NzMsIm5iZiI6MTY4NDQ1MjQwNC4zNTY5ODIsImV4cCI6MTcxNjA3NDgwNC4zNTE4OTEsInN1YiI6ImI5NDYxMTM3LTEwMjAtNDU5Mi05MWE3LTM4YzE4Zjk4ZDMwOCIsInNjb3BlcyI6W119.lp1ORoMRXC0DqfHA2ydY6tYP2vDWLoSJ472Kn7321ANNJMEaJQ1Nof8WcdMTwbjli-mer8LzvEDEFZYs3iipvBjfYvuxys14HcSKVpbgC1UuVIDzS_Fclah0ff9T1zARSp5QYwzfGNtFLK1pcwGHBosbsibZ5nH6KA5_s_9MWCGX643z0OBzL7IqPssubKU53998u_2iOqtCws9LKOmtPN6XC5O7TAjOfsUhbA08NULhqUGVXgTJDlKL7Zgin8rb8PZCAf1s0qpAnWJlQ9RqNHCaS9E1Fj5eFEtrj-HnFWqrLrQWPKoa_6PSI5XmS6NaSa6o-l_XDK9RQsSy5D-2BwcL5Mczfk5tshCjRDAc2tAykHjwSNiqH7UeybqgUiMQmJMzbF7EL2IOQqAOj2YHTbaURgZHze_3s4-EeNngn_yRbRCX7b4WyTh4DDete6LnlD8MB36WvJDD92eFtkx2Jxk1ZdAClxJd4s1urqkRlTJvbKFP2oTw-0MIFhHqd3nfZhlZQDwPRi61NZrxjPFKO_tETOw-FfAPUc7QfR3EQQlyT2064SSeDZjmPR8b2xlUomSGQdImN6BYJM7BfCFUCFQSu-S4J_972yFm14W0KGA8N5_PykJxp2Sf2_czU5OvCQ-JxxwZs3uLbnjulioZbXSZYsOfYeRmkMcyknZf5ME',
        },
      );
      if (response.statusCode == 200) {
        return DetailDiscussion.fromJson(
            (json.decode(response.body) as Map<String, dynamic>)['data']);
      }
      return null;
    } catch (e) {
      return throw Exception(e);
    }
  }
}
