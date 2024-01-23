import 'package:e_hadid_book_list/colors.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/bottom_metadata.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/info_tile.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/page_switcher.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/settings_button.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/settings_overlay_button.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/settings_overlay.dart';
import 'package:flutter/material.dart';

class ReadingScreen extends StatefulWidget {
  const ReadingScreen({super.key});

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
          title: const Text('e-Hadith Books List'),
          actions: [SettingsButton(onPressed: () {})],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Sahih Al-Bukhari',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  '1. Revelation',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const InfoTile(
                        title: 'Narrated By',
                        value: 'Umar bin Al-Khattab',
                        valueColor: AppColor.secondaryColor,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Text(
                        'I heard Allah\'s Messenger (ﷺ) saying, "The reward of deeds depends upon the intentions and every person will get the reward according to what he has intended. So whoever emigrated for worldly benefits or for a woman to marry, his emigration was for what he emigrated for."',
                      ),
                    ),
                  ),
                ),
                const PageSwitcher(),
                const SizedBox(
                  height: 20,
                ),
                const BottomMetaData(
                  metaData: {
                    'Reference': 'Sahih Al-Bukhari 1',
                    'In-Book': 'Book 1, Hadith 1',
                    'USC-MSA\n web \n(English)': 'Vol. 1, \nBook 1, \nHadith 1',
                  },
                )
              ],
            ),
            Positioned(
              top: 35,
              right: 0,
              child: SettingsMenuButton(
                onPressed: () {
                  showSettingsOverlay(context);
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColor.secondaryColor, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: const BottomAppBar(
            color: Colors.transparent,
          ),
        ));
  }
}
