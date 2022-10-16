import 'package:appalbumcopa/app/core/ui/helpers/loader.dart';
import 'package:appalbumcopa/app/core/ui/helpers/messages.dart';
import 'package:appalbumcopa/app/models/groups_stickers.dart';
import 'package:flutter/widgets.dart';

import '../my_stickers_page.dart';
import './my_stickers_view.dart';

 abstract class MyStickersViewImpl extends State<MyStickersPage> with Messages<MyStickersPage>, Loader<MyStickersPage> implements MyStickersView {

  var album = <GroupsStickers>[];

  @override
  void error(String message) {
    showError(message);
  }
 
  @override
  void loadedPage(List<GroupsStickers> album) {
    setState(() {
      this.album = album;
    });
  }


}