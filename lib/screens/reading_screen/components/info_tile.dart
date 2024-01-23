import 'package:e_hadid_book_list/colors.dart';
import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final String title;
  final String value;
  final Color? valueColor;
  final Color? titleColor;
  const InfoTile({
    super.key,
    required this.title,
    required this.value,
    this.valueColor,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: titleColor ?? AppColor.secondaryColor,
              ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: valueColor ??
                    (Theme.of(context).colorScheme.brightness == Brightness.dark
                        ? AppColor.cyan
                        : AppColor.primaryColor),
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
