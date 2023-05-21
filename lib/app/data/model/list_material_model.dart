
class MaterialClass {
    String id;
    String teacherId;
    String title;
    String file;
    String audio;
    String qrCode;
    DateTime createdAt;
    DateTime updatedAt;
    String fileUrl;
    String audioUrl;

    MaterialClass({
        required this.id,
        required this.teacherId,
        required this.title,
        required this.file,
        required this.audio,
        required this.qrCode,
        required this.createdAt,
        required this.updatedAt,
        required this.fileUrl,
        required this.audioUrl,
    });

    factory MaterialClass.fromJson(Map<String, dynamic> json) => MaterialClass(
        id: json["id"],
        teacherId: json["teacher_id"],
        title: json["title"],
        file: json["file"],
        audio: json["audio"],
        qrCode: json["qr_code"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        fileUrl: json["file_url"],
        audioUrl: json["audio_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "teacher_id": teacherId,
        "title": title,
        "file": file,
        "audio": audio,
        "qr_code": qrCode,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "file_url": fileUrl,
        "audio_url": audioUrl,
    };
}
