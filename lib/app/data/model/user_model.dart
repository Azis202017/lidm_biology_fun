
import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        required this.success,
        required this.message,
        required this.data,
    });

    bool success;
    String message;
    Data data;

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
    Data({
        required this.id,
        required this.username,
        required this.role,
        required this.createdAt,
        required this.updatedAt,
        required this.student,
    });

    String id;
    String username;
    String role;
    DateTime createdAt;
    DateTime updatedAt;
    Student student;

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
    Student({
        required this.id,
        required this.userId,
        required this.classId,
        required this.fullname,
        required this.createdAt,
        required this.updatedAt,
        required this.studentClass,
    });

    String id;
    String userId;
    String classId;
    String fullname;
    DateTime createdAt;
    DateTime updatedAt;
    Class studentClass;

    factory Student.fromJson(Map<String, dynamic> json) => Student(
        id: json["id"],
        userId: json["user_id"],
        classId: json["class_id"],
        fullname: json["fullname"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        studentClass: Class.fromJson(json["class"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "class_id": classId,
        "fullname": fullname,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "class": studentClass.toJson(),
    };
}

class Class {
    Class({
        required this.id,
        required this.name,
        required this.createdAt,
        required this.updatedAt,
    });

    String id;
    String name;
    DateTime createdAt;
    DateTime updatedAt;

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
