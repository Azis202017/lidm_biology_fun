
import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    Data? data;

    User copyWith({
        bool? success,
        String? message,
        Data? data,
    }) => 
        User(
            success: success ?? this.success,
            message: message ?? this.message,
            data: data ?? this.data,
        );

    factory User.fromJson(Map<String, dynamic> json) => User(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    Data({
        this.id,
        this.username,
        this.role,
        this.createdAt,
        this.updatedAt,
        this.student,
    });

    String? id;
    String? username;
    String? role;
    DateTime? createdAt;
    DateTime? updatedAt;
    Student? student;

    Data copyWith({
        String? id,
        String? username,
        String? role,
        DateTime? createdAt,
        DateTime? updatedAt,
        Student? student,
    }) => 
        Data(
            id: id ?? this.id,
            username: username ?? this.username,
            role: role ?? this.role,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
            student: student ?? this.student,
        );

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        username: json["username"],
        role: json["role"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        student: json["student"] == null ? null : Student.fromJson(json["student"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "role": role,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "student": student?.toJson(),
    };
}

class Student {
    Student({
        this.id,
        this.userId,
        this.classId,
        this.fullname,
        this.createdAt,
        this.updatedAt,
    });

    String? id;
    String? userId;
    String? classId;
    String? fullname;
    DateTime? createdAt;
    DateTime? updatedAt;

    Student copyWith({
        String? id,
        String? userId,
        String? classId,
        String? fullname,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) => 
        Student(
            id: id ?? this.id,
            userId: userId ?? this.userId,
            classId: classId ?? this.classId,
            fullname: fullname ?? this.fullname,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
        );

    factory Student.fromJson(Map<String, dynamic> json) => Student(
        id: json["id"],
        userId: json["user_id"],
        classId: json["class_id"],
        fullname: json["fullname"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "class_id": classId,
        "fullname": fullname,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
