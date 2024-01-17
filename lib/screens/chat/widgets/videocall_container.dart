import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class VideoCallContainer extends StatelessWidget {
  final String image;
  final Color color;
  final VoidCallback? onTap;
  const VideoCallContainer(
      {super.key, required this.image, required this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: Get.width * 0.15,
          height: Get.height * 0.15,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: SvgPicture.asset(
            image,
            height: 24,
            fit: BoxFit.scaleDown,
          )),
    );
  }
}
