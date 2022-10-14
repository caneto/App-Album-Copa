import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserModel {
  final int id;
  final String name;
  final String email;

  //total de figurinhas do album
  final int totalAlbum;

  //total de Stickers
  final int totalStickers;

  //total de figurinhas repetidas
  final int totalDuplicates;

  // Total de figurinhas que faltam para completar seu album
  final int totalComplete;

  //Percentual completado
  final int totalCompletePercent;


  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.totalAlbum,
    required this.totalStickers,
    required this.totalDuplicates,
    required this.totalComplete,
    required this.totalCompletePercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'totalAlbum': totalAlbum,
      'totalStickers': totalStickers,
      'totalDuplicates': totalDuplicates,
      'totalComplete': totalComplete,
      'totalCompletePercent': totalCompletePercent,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: (map["id"] ?? 0) as int,
      name: (map["name"] ?? '') as String,
      email: (map["email"] ?? '') as String,
      totalAlbum: (map["total_album"] ?? 0) as int,
      totalStickers: (map["total_stickers"] ?? 0) as int, 
      totalDuplicates: (map["total_duplicates"] ?? 0) as int,
      totalComplete: (map["total_complete"] ?? 0) as int,
      totalCompletePercent: (map["total_complete_percent"] ?? 0) as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
