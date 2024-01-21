import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';

class PlayersWidget extends StatelessWidget {
  final String number;
  final String name;
  const PlayersWidget({
    super.key,
    required this.number,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: Get.width * 0.06),
          width: Get.width * 0.08,
          height: Get.height * 0.05,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xFF22966A)),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Center(
                child: Text(
              number,
              style: const TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w600, color: kWhite),
            )),
          ),
        ),
        Container(
          //  width: Get.width * 0.2,
          //  height: Get.height * 0.04,
          padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.02, vertical: Get.height * 0.006),
          decoration: BoxDecoration(
              color: const Color(0xFF22966A),
              borderRadius: BorderRadius.circular(10)),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Center(
              child: Text(
                name,
                style: const TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w600, color: kWhite),
              ),
            ),
          ),
        )
      ],
    );
  }
}
