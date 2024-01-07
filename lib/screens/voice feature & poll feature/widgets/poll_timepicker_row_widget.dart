

import 'package:flutter/material.dart';

class TimePickerRow extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  const TimePickerRow({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          text1,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFF6B7588),
          ),
        ),
        Text(
          text2,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFF6B7588),
          ),
        ),
        Text(
          text3,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFF6B7588),
          ),
        ),
      ],
    );
  }
}
