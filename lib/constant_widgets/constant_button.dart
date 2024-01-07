import 'package:flutter/material.dart';

class ConstantButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color textColor;
  final Color buttonColor;
  final double width;
  final double height;
  final double? borderRadius;

  const ConstantButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.width,
    required this.height,
    this.borderRadius
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(borderRadius ?? 16)
        ),
        child: Center(
          child: Text(text,
            style: TextStyle(fontSize: 18, color: textColor, fontWeight: FontWeight.w600),),
        ),
      ),
    );
  }
}