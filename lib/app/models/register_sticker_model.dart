import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class RegisterStickerModel {
  final String stickerName;
  final String stickerCode;
  final String stickerNumber;
  const RegisterStickerModel({
    required this.stickerName,
    required this.stickerCode,
    required this.stickerNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sticker_name': stickerName,
      'sticker_code': stickerCode,
      'sticker_number': stickerNumber,
    };
  }

  factory RegisterStickerModel.fromMap(Map<String, dynamic> map) {
    return RegisterStickerModel(
      stickerName: (map["sticker_name"] ?? '') as String,
      stickerCode: (map["sticker_code"] ?? '') as String,
      stickerNumber: (map["sticker_number"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterStickerModel.fromJson(String source) => RegisterStickerModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
