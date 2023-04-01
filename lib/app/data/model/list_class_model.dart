// To parse this JSON data, do
//
//     final listOfClass = listOfClassFromJson(jsonString);

import 'dart:convert';

ListOfClass listOfClassFromJson(String str) => ListOfClass.fromJson(json.decode(str));

String listOfClassToJson(ListOfClass data) => json.encode(data.toJson());

class ListOfClass {
    ListOfClass({
        this.success,
        this.message,
        this.data,
    });

    bool? success;
    String? message;
    List<Classroom>? data;

    ListOfClass copyWith({
        bool? success,
        String? message,
        List<Classroom>? data,
    }) => 
        ListOfClass(
            success: success ?? this.success,
            message: message ?? this.message,
            data: data ?? this.data,
        );

    factory ListOfClass.fromJson(Map<String, dynamic> json) => ListOfClass(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Classroom>.from(json["data"]!.map((x) => Classroom.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Classroom {
    Classroom({
        this.id,
        this.name,
        this.createdAt,
        this.updatedAt,
    });

    String? id;
    String? name;
    DateTime? createdAt;
    DateTime? updatedAt;

    Classroom copyWith({
        String? id,
        String? name,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) => 
        Classroom(
            id: id ?? this.id,
            name: name ?? this.name,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
        );

    factory Classroom.fromJson(Map<String, dynamic> json) => Classroom(
        id: json["id"],
        name: json["name"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
