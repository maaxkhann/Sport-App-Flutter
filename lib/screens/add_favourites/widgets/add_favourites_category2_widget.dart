import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddFavouriteCategory2Widget extends StatelessWidget {
  final String imagePath;
  final Color containerColor;
  final String text;

  const AddFavouriteCategory2Widget({super.key,
    required this.imagePath,
    required this.containerColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
              width: Get.width * 0.16,
              height: Get.height * 0.1,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: containerColor,
              ),
              child: Center(
                child: Image.asset(imagePath,
                  width: 28, height: 28,),
              )
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white, // You can customize the text color here
          ),
        ),
      ],
    );
  }
}
