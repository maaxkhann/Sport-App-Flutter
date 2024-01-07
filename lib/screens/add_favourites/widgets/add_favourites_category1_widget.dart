import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddFavouriteCategory1Widget extends StatelessWidget {
  final String imagePath;
  final Color containerColor;

  const AddFavouriteCategory1Widget({super.key,
    required this.imagePath,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          width: Get.width * 0.09,
          height: Get.height * 0.09,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: containerColor,
          ),
          child: Center(
            child: Image.asset(imagePath,
              width: 18, height: 18, filterQuality: FilterQuality.high,),
          )
      ),
    );
  }
}
