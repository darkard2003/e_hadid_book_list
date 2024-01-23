import 'package:e_hadid_book_list/screens/reading_screen/components/info_tile.dart';
import 'package:flutter/material.dart';

class BottomMetaData extends StatelessWidget {
  final Map<String, dynamic> metaData;
  const BottomMetaData({
    super.key,
    required this.metaData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0x1596651C),
            Color(0x1096651C),
            Color(0x002B1600),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            for (var item in metaData.entries)
              InfoTile(
                title: item.key,
                value: '${item.value}',
              ),
          ],
        ),
      ),
    );
  }
}
