



class MaterialClass {
    MaterialClass({
        required this.id,
        required this.teacherId,
        required this.title,
        required this.file,
        required this.qrCode,
        required this.createdAt,
        required this.updatedAt,
        required this.fileUrl,
    });

    String id;
    String teacherId;
    String title;
    String file;
    String qrCode;
    DateTime createdAt;
    DateTime updatedAt;
    String fileUrl;

    factory MaterialClass.fromJson(Map<String, dynamic> json) => MaterialClass(
        id: json["id"],
        teacherId: json["teacher_id"],
        title: json["title"],
        file: json["file"],
        qrCode: json["qr_code"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        fileUrl: json["file_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "teacher_id": teacherId,
        "title": title,
        "file": file,
        "qr_code": qrCode,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "file_url": fileUrl,
    };
}
