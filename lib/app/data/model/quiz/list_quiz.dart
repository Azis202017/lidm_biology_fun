// To parse this JSON data, do
//
//     final quizModel = quizModelFromJson(jsonString);

import 'dart:convert';

QuizModel quizModelFromJson(String str) => QuizModel.fromJson(json.decode(str));

String quizModelToJson(QuizModel data) => json.encode(data.toJson());

class QuizModel {
    String? id;
    String? quizId;
    String? question;
    String? image;
    String? optionA;
    String? optionB;
    String? optionC;
    String? optionD;
    String? answer;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? imageUrl;

    QuizModel({
        this.id,
        this.quizId,
        this.question,
        this.image,
        this.optionA,
        this.optionB,
        this.optionC,
        this.optionD,
        this.answer,
        this.createdAt,
        this.updatedAt,
        this.imageUrl,
    });

    factory QuizModel.fromJson(Map<String, dynamic> json) => QuizModel(
        id: json["id"],
        quizId: json["quiz_id"],
        question: json["question"],
        image: json["image"],
        optionA: json["option_a"],
        optionB: json["option_b"],
        optionC: json["option_c"],
        optionD: json["option_d"],
        answer: json["answer"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        imageUrl: json["image_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "quiz_id": quizId,
        "question": question,
        "image": image,
        "option_a": optionA,
        "option_b": optionB,
        "option_c": optionC,
        "option_d": optionD,
        "answer": answer,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "image_url": imageUrl,
    };
}
