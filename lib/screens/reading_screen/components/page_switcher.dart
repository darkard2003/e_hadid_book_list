
import 'package:e_hadid_book_list/colors.dart';
import 'package:flutter/material.dart';

class PageSwitcher extends StatelessWidget {
  final Function()? onNext;
  final Function()? onPrevious;
  const PageSwitcher({
    super.key,
    this.onNext,
    this.onPrevious,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: onPrevious ?? () {},
          child: const Text(
            '- Previous',
            style: TextStyle(color: AppColor.primaryColor),
          ),
        ),
        TextButton(
          onPressed: onNext ?? () {},
          child: const Text(
            'Next -',
            style: TextStyle(color: AppColor.secondaryColor),
          ),
        ),
      ],
    );
  }
}