import 'package:e_hadid_book_list/colors.dart';
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
