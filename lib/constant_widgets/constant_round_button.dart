import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color titleColor;
  final String title;
  final double? width;
  final double? height;

  const RoundButton({
    super.key,
    required this.onPressed,
    required this.buttonColor,
    required this.titleColor,
    required this.title,
    this.width,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? Get.height * 0.045,
        width: width ?? Get.width * 0.23,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadiusDirectional.circular(20)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: titleColor,
            ),
          ),
        ),
      ),
    );
  }
}
