import 'package:e_hadid_book_list/colors.dart';
import 'package:e_hadid_book_list/models/book_model.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/bottom_metadata.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/info_tile.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/page_switcher.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/settings_button.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/settings_overlay_button.dart';
import 'package:e_hadid_book_list/services/book_repo.dart';
import 'package:flutter/material.dart';

class ReadingScreen extends StatefulWidget {
  const ReadingScreen({super.key});

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  final BookRepo bookRepo = BookRepo();
  late BookModel book;

  @override
  void initState() {
    super.initState();
    book = bookRepo.getMockBook();
  }

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
                  book.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  book.chapter[0].title,
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
                      InfoTile(
                        title: 'Narrated By',
                        value: book.author,
                        valueColor: AppColor.secondaryColor,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            book.isFavorite = !book.isFavorite;
                          });
                        },
                        icon: Icon(
                          book.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: book.isFavorite
                              ? AppColor.secondaryColor
                              : AppColor.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Text(
                        book.chapter[0].content,
                      ),
                    ),
                  ),
                ),
                const PageSwitcher(),
                const SizedBox(
                  height: 20,
                ),
                BottomMetaData(
                  metaData: book.meta,
                )
              ],
            ),
            const Positioned(
              top: 35,
              right: 0,
              child: SettingsMenuButtonOverlay(),
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
