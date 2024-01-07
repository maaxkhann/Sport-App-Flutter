import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports_app/app_constants/constant_colors.dart';
import 'package:sports_app/app_constants/constant_textstyle.dart';

class StoryWidget extends StatelessWidget {
  final String image;
  final String text;
  const StoryWidget({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: Get.height * 0.065,
              width: Get.width * 0.134,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image)),
                shape: BoxShape.rectangle,
                color: kWhite,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text, style: kHeading6)
        ],
      ),
    );
  }
}
