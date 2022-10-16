import 'package:appalbumcopa/app/pages/my_stickers/presenter/my_stieckers_presenter.dart';
import 'package:appalbumcopa/app/pages/my_stickers/view/my_stickers_view_impl.dart';
import 'package:appalbumcopa/app/pages/my_stickers/widgets/sticker_group.dart';
import 'package:appalbumcopa/app/pages/my_stickers/widgets/sticker_group_filter.dart';

import 'widgets/sticker_status_filter.dart';
import 'package:flutter/material.dart';

class MyStickersPage extends StatefulWidget {
  final MyStieckersPresenter presenter;

  const MyStickersPage({super.key, required this.presenter});

  @override
  State<MyStickersPage> createState() => _MyStickersPageState();
}

class _MyStickersPageState extends MyStickersViewImpl {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Figurinhas'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                StickerStatusFilter(
                  filterSelected: statusFilter,
                ),
                StickerGroupFilter(countries: countries),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final group = album[index];
                return StickerGroup(
                  group: group,
                  statusFilter: statusFilter,
                );
              },
              childCount: album.length,
            ),
          )
        ],
      ),
    );
  }
}
