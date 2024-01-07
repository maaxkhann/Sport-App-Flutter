import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ConstantExploreWidget extends StatelessWidget {
  final String imagePath;
  final String titleText;
  final String subTitleText;
  final String trailingIcon;

  const ConstantExploreWidget({
    required this.imagePath,
    required this.titleText,
    required this.subTitleText,
    required this.trailingIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(imagePath,
            width: 64, height: 64, fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.only(right: Get.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titleText,
                  style : const TextStyle(
                    fontSize : 13,
                    fontWeight : FontWeight.w600,
                    color :Color(0xFFFFFFFF),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                    subTitleText,
                    style: const TextStyle(
                      fontSize : 12,
                      fontWeight : FontWeight.w600,
                      color : Color(0xFFC4C4C4),
                    )
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: Get.width * 0.03, bottom: Get.height * 0.02),
          child: InkWell(
            onTap: () {},
            child: SvgPicture.asset(trailingIcon,
              width: 24, height: 24,),
          ),
        ),
      ],
    );
  }
}