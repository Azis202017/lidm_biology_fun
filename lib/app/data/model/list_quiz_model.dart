// To parse this JSON data, do
//
//     final quiz = quizFromJson(jsonString);

import 'dart:convert';

Quiz quizFromJson(String str) => Quiz.fromJson(json.decode(str));

String quizToJson(Quiz data) => json.encode(data.toJson());

class Quiz {
    Quiz({
        this.id,
        this.materialId,
        this.createdAt,
        this.updatedAt,
        this.title,
    });

    String? id;
    String? materialId;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? title;

    Quiz copyWith({
        String? id,
        String? materialId,
        DateTime? createdAt,
        DateTime? updatedAt,
        String? title,
    }) => 
        Quiz(
            id: id ?? this.id,
            materialId: materialId ?? this.materialId,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
            title: title ?? this.title,
        );

    factory Quiz.fromJson(Map<String, dynamic> json) => Quiz(
        id: json["id"],
        materialId: json["material_id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "material_id": materialId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "title": title,
    };
}

