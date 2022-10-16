import 'package:flutter/material.dart';

class StickerDetailPage extends StatefulWidget {

  const StickerDetailPage({ super.key });

  @override
  State<StickerDetailPage> createState() => _StickerDetailPageState();
}

class _StickerDetailPageState extends State<StickerDetailPage> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Sticker Detail'),),
           body: Container(),
       );
  }
}