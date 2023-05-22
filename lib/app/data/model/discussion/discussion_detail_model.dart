// To parse this JSON data, do
//
//     final detailDiscussion = detailDiscussionFromJson(jsonString);

import 'dart:convert';

DetailDiscussion detailDiscussionFromJson(String str) => DetailDiscussion.fromJson(json.decode(str));

String detailDiscussionToJson(DetailDiscussion data) => json.encode(data.toJson());

class DetailDiscussion {
    String? id;
    String? materialId;
    String? teacherId;
    String? title;
    String? content;
    DateTime? createdAt;
    DateTime? updatedAt;
    List<Reply>? reply;

    DetailDiscussion({
        this.id,
        this.materialId,
        this.teacherId,
        this.title,
        this.content,
        this.createdAt,
        this.updatedAt,
        this.reply,
    });

    factory DetailDiscussion.fromJson(Map<String, dynamic> json) => DetailDiscussion(
        id: json["id"],
        materialId: json["material_id"],
        teacherId: json["teacher_id"],
        title: json["title"],
        content: json["content"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        reply: json["reply"] == null ? [] : List<Reply>.from(json["reply"]!.map((x) => Reply.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "material_id": materialId,
        "teacher_id": teacherId,
        "title": title,
        "content": content,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "reply": reply == null ? [] : List<dynamic>.from(reply!.map((x) => x.toJson())),
    };
}

class Reply {
    String? id;
    String? discussionId;
    String? studentId;
    String? title;
    String? content;
    DateTime? createdAt;
    DateTime? updatedAt;
    Student? student;

    Reply({
        this.id,
        this.discussionId,
        this.studentId,
        this.title,
        this.content,
        this.createdAt,
        this.updatedAt,
        this.student,
    });

    factory Reply.fromJson(Map<String, dynamic> json) => Reply(
        id: json["id"],
        discussionId: json["discussion_id"],
        studentId: json["student_id"],
        title: json["title"],
        content: json["content"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        student: json["student"] == null ? null : Student.fromJson(json["student"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "discussion_id": discussionId,
        "student_id": studentId,
        "title": title,
        "content": content,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "student": student?.toJson(),
    };
}

class Student {
    String? id;
    String? userId;
    String? classId;
    String? fullname;
    String? photo;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? photoUrl;

    Student({
        this.id,
        this.userId,
        this.classId,
        this.fullname,
        this.photo,
        this.createdAt,
        this.updatedAt,
        this.photoUrl,
    });

    factory Student.fromJson(Map<String, dynamic> json) => Student(
        id: json["id"],
        userId: json["user_id"],
        classId: json["class_id"],
        fullname: json["fullname"],
        photo: json["photo"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        photoUrl: json["photo_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "class_id": classId,
        "fullname": fullname,
        "photo": photo,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "photo_url": photoUrl,
    };
}
