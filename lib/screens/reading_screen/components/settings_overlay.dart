import 'package:e_hadid_book_list/colors.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/info_tile.dart';
import 'package:flutter/material.dart';

class SettingsOverlay extends StatefulWidget {
  final void Function()? onClose;
  const SettingsOverlay({super.key, this.onClose});

  @override
  State<SettingsOverlay> createState() => _SettingsOverlayState();
}

class _SettingsOverlayState extends State<SettingsOverlay> {
  String volume = 'Volume 1';
  String book = 'Book 1';
  String hadith = 'Hadith 1';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: AppColor.surfaceColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        width: MediaQuery.of(context).size.width - 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: widget.onClose,
                    icon: const Icon(Icons.menu),
                  ),
                  Text(
                    'e-Hadith Navigation & Settings',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Row(
                children: [
                  const InfoTile(
                      title: 'Hadidth Book', value: 'Sahih Al-Bukhari 1'),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Change',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: AppColor.secondaryColor),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownButton(
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColor.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                    alignment: Alignment.centerLeft,
                    items: List.generate(
                      10,
                      (index) => DropdownMenuItem(
                        value: 'Volume $index',
                        child: Text("Volume $index"),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        volume = value as String;
                      });
                    },
                    value: volume,
                  ),
                  DropdownButton(
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColor.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                    alignment: Alignment.centerLeft,
                    items: List.generate(
                      10,
                      (index) => DropdownMenuItem(
                        value: 'Book $index',
                        child: Text("Book $index"),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        book = value as String;
                      });
                    },
                    value: book,
                  ),
                  DropdownButton(
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColor.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                    alignment: Alignment.centerLeft,
                    items: List.generate(
                      10,
                      (index) => DropdownMenuItem(
                        value: 'Hadith $index',
                        child: Text("Hadith $index"),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        hadith = value as String;
                      });
                    },
                    value: hadith,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios)),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.secondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'English',
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 45,
                        decoration: BoxDecoration(
                          color: AppColor.secondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_outline),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const SizedBox(
                        width: 80,
                        child: Text('Go to Favorites'),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void showSettingsOverlay(BuildContext context) async {
  OverlayState overlayState = Overlay.of(context);
  late OverlayEntry overlayEntry;
  overlayEntry = OverlayEntry(
    builder: (context) {
      return Positioned(
        top: 110,
        left: 10,
        child: SettingsOverlay(
          onClose: () {
            overlayEntry.remove();
          },
        ),
      );
    },
  );
  overlayState.insert(overlayEntry);
}
