import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash2CategoryWidget extends StatelessWidget {
  final String imagePath;
  final Color containerColor;
  final String text;

  const Splash2CategoryWidget({super.key,
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
              width: Get.width * 0.25,
              height: Get.width * 0.25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: containerColor,
              ),
              child: Center(
                child: Image.asset(imagePath,
                  width: 44, height: 44,),
              )
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white, // You can customize the text color here
          ),
        ),
      ],
    );
  }
}
