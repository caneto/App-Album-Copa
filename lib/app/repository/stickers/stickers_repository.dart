import 'package:appalbumcopa/app/models/groups_stickers.dart';

abstract class StickersRepository {
  Future<List<GroupsStickers>> getMyAlbum();
}