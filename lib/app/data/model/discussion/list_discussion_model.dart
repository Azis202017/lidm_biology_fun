// To parse this JSON data, do
//
//     final discussion = discussionFromJson(jsonString);

import 'dart:convert';

Discussion discussionFromJson(String str) => Discussion.fromJson(json.decode(str));

String discussionToJson(Discussion data) => json.encode(data.toJson());

class Discussion {
    String id;
    String materialId;
    String teacherId;
    String title;
    String content;
    DateTime createdAt;
    DateTime updatedAt;

    Discussion({
        required this.id,
        required this.materialId,
        required this.teacherId,
        required this.title,
        required this.content,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Discussion.fromJson(Map<String, dynamic> json) => Discussion(
        id: json["id"],
        materialId: json["material_id"],
        teacherId: json["teacher_id"],
        title: json["title"],
        content: json["content"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "material_id": materialId,
        "teacher_id": teacherId,
        "title": title,
        "content": content,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
