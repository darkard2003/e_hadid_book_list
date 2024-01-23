import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  final Function() onPressed;
  const SettingsButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onPressed,
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 50,
          minHeight: 50,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/settings.png'),
          ),
        ),
      ),
    );
  }
}
