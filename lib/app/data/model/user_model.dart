// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    bool success;
    String message;
    Data data;

    User({
        required this.success,
        required this.message,
        required this.data,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    String id;
    String username;
    String role;
    DateTime createdAt;
    DateTime updatedAt;
    Student student;

    Data({
        required this.id,
        required this.username,
        required this.role,
        required this.createdAt,
        required this.updatedAt,
        required this.student,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        username: json["username"],
        role: json["role"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        student: Student.fromJson(json["student"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "role": role,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "student": student.toJson(),
    };
}

class Student {
    String id;
    String userId;
    String classId;
    String fullname;
    String photo;
    DateTime createdAt;
    DateTime updatedAt;
    String photoUrl;
    Class studentClass;

    Student({
        required this.id,
        required this.userId,
        required this.classId,
        required this.fullname,
        required this.photo,
        required this.createdAt,
        required this.updatedAt,
        required this.photoUrl,
        required this.studentClass,
    });

    factory Student.fromJson(Map<String, dynamic> json) => Student(
        id: json["id"],
        userId: json["user_id"],
        classId: json["class_id"],
        fullname: json["fullname"],
        photo: json["photo"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        photoUrl: json["photo_url"],
        studentClass: Class.fromJson(json["class"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "class_id": classId,
        "fullname": fullname,
        "photo": photo,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "photo_url": photoUrl,
        "class": studentClass.toJson(),
    };
}

class Class {
    String id;
    String name;
    DateTime createdAt;
    DateTime updatedAt;

    Class({
        required this.id,
        required this.name,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Class.fromJson(Map<String, dynamic> json) => Class(
        id: json["id"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
