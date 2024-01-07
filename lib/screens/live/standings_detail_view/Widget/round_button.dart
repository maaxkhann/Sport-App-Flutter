

import 'package:flutter/material.dart';

import '../standings_details.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final Color? color;
  const RoundButton({
    super.key,
    required this.title,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(23)),
      child: Center(
          child: Text(
        title,
        style: buttonTextStyle,
      )),
    );
  }
}