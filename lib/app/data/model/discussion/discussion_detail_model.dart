// To parse this JSON data, do
//
//     final discussionDetail = discussionDetailFromJson(jsonString);

import 'dart:convert';

DiscussionDetail discussionDetailFromJson(String str) => DiscussionDetail.fromJson(json.decode(str));

String discussionDetailToJson(DiscussionDetail data) => json.encode(data.toJson());

class DiscussionDetail {
    String id;
    String materialId;
    String teacherId;
    String title;
    String content;
    DateTime createdAt;
    DateTime updatedAt;
    List<Reply> reply;

    DiscussionDetail({
        required this.id,
        required this.materialId,
        required this.teacherId,
        required this.title,
        required this.content,
        required this.createdAt,
        required this.updatedAt,
        required this.reply,
    });

    factory DiscussionDetail.fromJson(Map<String, dynamic> json) => DiscussionDetail(
        id: json["id"],
        materialId: json["material_id"],
        teacherId: json["teacher_id"],
        title: json["title"],
        content: json["content"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        reply: List<Reply>.from(json["reply"].map((x) => Reply.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "material_id": materialId,
        "teacher_id": teacherId,
        "title": title,
        "content": content,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "reply": List<dynamic>.from(reply.map((x) => x.toJson())),
    };
}

class Reply {
    String id;
    String discussionId;
    String studentId;
    String title;
    String content;
    DateTime createdAt;
    DateTime updatedAt;

    Reply({
        required this.id,
        required this.discussionId,
        required this.studentId,
        required this.title,
        required this.content,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Reply.fromJson(Map<String, dynamic> json) => Reply(
        id: json["id"],
        discussionId: json["discussion_id"],
        studentId: json["student_id"],
        title: json["title"],
        content: json["content"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "discussion_id": discussionId,
        "student_id": studentId,
        "title": title,
        "content": content,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
