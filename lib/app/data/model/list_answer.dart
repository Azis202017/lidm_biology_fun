// To parse this JSON data, do
//
//     final answer = answerFromJson(jsonString);

import 'dart:convert';

Answer answerFromJson(String str) => Answer.fromJson(json.decode(str));

String answerToJson(Answer data) => json.encode(data.toJson());

class Answer {
    Answer({
        this.questionId,
        this.answer,
    });

    String? questionId;
    String? answer;

    Answer copyWith({
        String? questionId,
        String? answer,
    }) => 
        Answer(
            questionId: questionId ?? this.questionId,
            answer: answer ?? this.answer,
        );

    factory Answer.fromJson(Map<String, dynamic> json) => Answer(
        questionId: json["question_id"],
        answer: json["answer"],
    );

    Map<String, dynamic> toJson() => {
        "question_id": questionId,
        "answer": answer,
    };
}
