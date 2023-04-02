// To parse this JSON data, do
//
//     final loginError = loginErrorFromJson(jsonString);

import 'dart:convert';

LoginError loginErrorFromJson(String str) => LoginError.fromJson(json.decode(str));

String loginErrorToJson(LoginError data) => json.encode(data.toJson());

class LoginError {
    LoginError({
        this.message,
        this.errors,
    });

    String? message;
    Errors? errors;

    LoginError copyWith({
        String? message,
        Errors? errors,
    }) => 
        LoginError(
            message: message ?? this.message,
            errors: errors ?? this.errors,
        );

    factory LoginError.fromJson(Map<String, dynamic> json) => LoginError(
        message: json["message"],
        errors: json["errors"] == null ? null : Errors.fromJson(json["errors"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "errors": errors?.toJson(),
    };
}

class Errors {
    Errors({
        this.username,
    });

    List<String>? username;

    Errors copyWith({
        List<String>? username,
    }) => 
        Errors(
            username: username ?? this.username,
        );

    factory Errors.fromJson(Map<String, dynamic> json) => Errors(
        username: json["username"] == null ? [] : List<String>.from(json["username"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "username": username == null ? [] : List<dynamic>.from(username!.map((x) => x)),
    };
}
