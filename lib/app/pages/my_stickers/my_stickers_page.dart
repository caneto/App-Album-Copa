import 'widgets/sticker_status_filter.dart';
import 'package:flutter/material.dart';

class MyStickersPage extends StatelessWidget {

  const MyStickersPage({super.key});

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
                StickerStatusFilter(filterSelected: '',)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
