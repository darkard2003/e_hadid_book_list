import 'package:e_hadid_book_list/colors.dart';
import 'package:e_hadid_book_list/screens/reading_screen/components/settings_overlay.dart';
import 'package:flutter/material.dart';

class SettingsMenuButton extends StatelessWidget {
  final void Function()? onPressed;
  const SettingsMenuButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.menu, color: AppColor.creamColor),
        ));
  }
}

class SettingsMenuButtonOverlay extends StatefulWidget {
  const SettingsMenuButtonOverlay({super.key});

  @override
  State<SettingsMenuButtonOverlay> createState() =>
      _SettingsMenuButtonOverlayState();
}

class _SettingsMenuButtonOverlayState extends State<SettingsMenuButtonOverlay> {
  late double maxWidth;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    maxWidth = MediaQuery.of(context).size.width - 10;
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.surfaceColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      width: isExpanded ? maxWidth : 70,
      child: isExpanded
          ? SettingsOverlayView(
              onClose: () {
                setState(() {
                  isExpanded = false;
                });
              },
            )
          : IconButton(
              onPressed: () {
                setState(() {
                  isExpanded = true;
                });
              },
              icon: const Icon(Icons.menu),
            ),
    );
  }
}
