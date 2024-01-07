import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleRow extends StatelessWidget {
  final String flag;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  const TitleRow({
    super.key,
    required this.flag,
    required this.title,
    required this.subtitle,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Image.asset('assets/standing-view-icons/$flag.png'),
        ),
        SizedBox(
          width: Get.width * 0.030,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF)),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFAAAAAA)),
            )
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: onPressed,
          child: Image.asset(
            'assets/standing-view-icons/arrowRight.png',
          ),
        )
      ],
    );
  }
}
