// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'user_sticker_model.dart';

class GroupsStickers {
  final int id;
  final String countryCode;
  final String countryName;
  final int stickersStart;
  final int stickersEnd;
  final List<UserStickerModel> stickers;
  final String flag;
  
  const GroupsStickers({
    required this.id,
    required this.countryCode,
    required this.countryName,
    required this.stickersStart,
    required this.stickersEnd,
    required this.stickers,
    required this.flag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'country_code': countryCode,
      'country_name': countryName,
      'stickers_start': stickersStart,
      'stickers_end': stickersEnd,
      'stickers': stickers.map((x) {return x.toMap();}).toList(growable: false),
      'flag': flag,
    };
  }

  factory GroupsStickers.fromMap(Map<String, dynamic> map) {
    return GroupsStickers(
      id: (map["id"] ?? 0) as int,
      countryCode: (map["country_code"] ?? '') as String,
      countryName: (map["country_name"] ?? '') as String,
      stickersStart: (map["stickers_start"] ?? 0) as int,
      stickersEnd: (map["stickers_end"] ?? 0) as int,
      stickers: List<UserStickerModel>.from(((map['stickers'] ?? const <UserStickerModel>[]) as List).map<UserStickerModel>((x) {return UserStickerModel.fromMap((x?? Map<String,dynamic>.from({})) as Map<String,dynamic>);}),),
      flag: (map["flag"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GroupsStickers.fromJson(String source) => GroupsStickers.fromMap(json.decode(source) as Map<String, dynamic>);
}
