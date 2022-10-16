import 'package:appalbumcopa/app/core/ui/helpers/loader.dart';
import 'package:appalbumcopa/app/core/ui/helpers/messages.dart';
import 'package:appalbumcopa/app/models/groups_stickers.dart';
import 'package:flutter/widgets.dart';

import '../my_stickers_page.dart';
import './my_stickers_view.dart';

 abstract class MyStickersViewImpl extends State<MyStickersPage> with Messages<MyStickersPage>, Loader<MyStickersPage> implements MyStickersView {

  var album = <GroupsStickers>[];
  var statusFilter = 'all';

  @override
  void initState() {
    widget.presenter.view = this;  
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.presenter.getMyAlbum();
    });
    super.initState();
  }

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

  @override
  void updateStatusFilter(status) {
    setState(() {
      statusFilter = status;
    });
  }

}