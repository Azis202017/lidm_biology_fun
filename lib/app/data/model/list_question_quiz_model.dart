import 'dart:convert';

QuestionQuiz questionQuizFromJson(String str) =>
    QuestionQuiz.fromJson(json.decode(str));

String questionQuizToJson(QuestionQuiz data) => json.encode(data.toJson());

class QuestionQuiz {
  QuestionQuiz({
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

  String? id;
  String? quizId;
  String? question;
  dynamic image;
  String? optionA;
  String? optionB;
  String? optionC;
  String? optionD;
  String? answer;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? imageUrl;

  QuestionQuiz copyWith({
    String? id,
    String? quizId,
    String? question,
    dynamic image,
    String? optionA,
    String? optionB,
    String? optionC,
    String? optionD,
    String? answer,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? imageUrl,
  }) =>
      QuestionQuiz(
        id: id ?? this.id,
        quizId: quizId ?? this.quizId,
        question: question ?? this.question,
        image: image ?? this.image,
        optionA: optionA ?? this.optionA,
        optionB: optionB ?? this.optionB,
        optionC: optionC ?? this.optionC,
        optionD: optionD ?? this.optionD,
        answer: answer ?? this.answer,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        imageUrl: imageUrl ?? this.imageUrl,
      );

  factory QuestionQuiz.fromJson(Map<String, dynamic> json) => QuestionQuiz(
        id: json["id"],
        quizId: json["quiz_id"],
        question: json["question"],
        image: json["image"],
        optionA: json["option_a"],
        optionB: json["option_b"],
        optionC: json["option_c"],
        optionD: json["option_d"],
        answer: json["answer"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
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
